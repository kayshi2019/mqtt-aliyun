ALL:mqtt_publish
CC = gcc 
INC = /home/kayshi/paho.mqtt.c/src
LIB_PATH = /home/kayshi/paho.mqtt.c/
LIB = paho-mqtt3c
SRC = mqtt_publish.c
SRC += aiot_mqtt_sign.c

mqtt_publish:
	$(CC) $(SRC) -o $@  -l$(LIB) -L$(LIB_PATH) -I$(INC)
.PHONY clean:
	-rm -f mqtt_subscribe mqtt_publish


