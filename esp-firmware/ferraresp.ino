/**
 * Using https://pubsubclient.knolleary.net/api.html
 */

#include <PubSubClient.h>
#include <ESP8266WiFi.h>

#define TRIGGER_PIN 14
#define IND_LED 0
#define MQTT_BROKER "10.15.254.154"
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

ICACHE_RAM_ATTR void handleInterrupt()
{
  hasEvent = true;
}

void setup()
{
  //
  // attachInterrupt(digitalPinToInterrupt(TRIGGER_PIN), handleInterrupt, RISING);
  Serial.begin(115200);

  setup_wifi();

  mqttClient.setServer(MQTT_BROKER, 1883);

  pinMode(TRIGGER_PIN, INPUT_PULLUP);
   digitalWrite(IND_LED, 1); // led off
   pinMode(IND_LED, OUTPUT);
  attachInterrupt(digitalPinToInterrupt(TRIGGER_PIN), handleInterrupt, RISING);

  reconnect_mqtt();
}

void loop()
{
  // if not connected reconnect to mosquito
  reconnect_mqtt();

  if (hasEvent)
  {
    Serial.println("got event");
    hasEvent = false;
    mqttClient.publish("/top10/power_meter/tick", "");
    digitalWrite(IND_LED, 0);
    delay(100);
    digitalWrite(IND_LED, 1);
  }

  mqttClient.loop();
}
