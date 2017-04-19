FROM node
MAINTAINER leejoneshane@gmail.com

WORKDIR /usr/src/app
RUN apt-get update \
    && apt-get install mosquitto \
    && apt-get clean \
    && git clone https://github.com/webduinoio/webduino-blockly.git \
    && mv webduino-blockly/* . \
    && rm -rf webduino-blockly \
    && npm install
    
EXPOSE 8080 1883
VOLUME ["/usr/src/app"]
CMD mosquitto ; npm start
