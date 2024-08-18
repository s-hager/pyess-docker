#!/bin/bash

# Replace environment variables into the essmqtt.conf file
sed -i 's/{{ESS_PASSWORD}}/'"$ESS_PASSWORD"'/g' /etc/essmqtt.conf
sed -i 's/{{MQTT_SERVER}}/'"$MQTT_SERVER"'/g' /etc/essmqtt.conf
sed -i 's/{{MQTT_USER}}/'"$MQTT_USER"'/g' /etc/essmqtt.conf
sed -i 's/{{MQTT_PASSWORD}}/'"$MQTT_PASSWORD"'/g' /etc/essmqtt.conf

source /opt/pyess-venv/bin/activate

exec "$@"