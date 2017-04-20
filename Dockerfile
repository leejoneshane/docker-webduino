FROM node
MAINTAINER leejoneshane@gmail.com

WORKDIR /usr/src/app
RUN apt-get update \
    && apt-get -y install mosquitto vim \
    && apt-get clean \
    && git clone https://github.com/webduinoio/webduino-blockly.git \
    && mv webduino-blockly/* . \
    && rm -rf webduino-blockly \
    && npm install
    
ADD start.sh /sbin
RUN chmod 711 /sbin/start.sh
EXPOSE 8080 1883
VOLUME ["/usr/src/app"]
CMD ["/sbin/start.sh"]
