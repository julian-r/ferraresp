/**
 * Using https://pubsubclient.knolleary.net/api.html
 */

#include <PubSubClient.h>
#include <ESP8266WiFi.h>

#define TRIGGER_PIN 2
#define MQTT_BROKER "[fe80::a2b3:ccff:fee9:51ee]"
#define PSK "Das-Netzwerk-zu-Geidorf"
#define SSID "CoWorking zu Geidorf"

WiFiClient wifiClient;
PubSubClient mqttClient(wifiClient);

volatile bool hasEvent = false;

void setup_wifi()
{
  // station only so it does not setup an AP

  WiFi.mode(WIFI_STA);
  delay(10);
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(SSID);

  WiFi.begin(SSID, PSK);

  while (WiFi.status() != WL_CONNECTED)
  {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

void reconnect_mqtt()
{
  while (!mqttClient.connected())
  {
    Serial.print("Reconnecting...");
    if (!mqttClient.connect("ferraresp"))
    {
      Serial.print("failed, rc=");
      Serial.print(mqttClient.state());
      Serial.println(" retrying in 5 seconds");
      delay(5000);
    }
  }
}

void handleInterrupt() {
  hasEvent = true;
}

void setup()
{
  pinMode(TRIGGER_PIN, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(TRIGGER_PIN), handleInterrupt, RISING);
  Serial.begin(115200);

  setup_wifi();

  mqttClient.setServer(MQTT_BROKER, 1883);

  reconnect_mqtt();
}

void loop()
{
  // if not connected reconnect to mosquito
  reconnect_mqtt();

  if(hasEvent)
  {
    mqttClient.publish("/top10/power_meter/tick", ""); 
  }

  mqttClient.loop();
}
