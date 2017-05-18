FROM node:alpine
MAINTAINER leejoneshane@gmail.com

WORKDIR /usr/src/app
RUN apk add --no-cache git mosquitto mosquitto-clients vim \
    && git clone https://github.com/webduinoio/webduino-blockly.git \
    && mv webduino-blockly/* . \
    && rm -rf webduino-blockly \
    && npm install
    
ADD start.sh /sbin
RUN chmod 711 /sbin/start.sh
EXPOSE 8080 1883
VOLUME ["/usr/src/app"]
CMD ["/sbin/start.sh"]
