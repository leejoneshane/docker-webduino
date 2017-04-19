FROM node
MAINTAINER leejoneshane@gmail.com

WORKDIR /usr/src/app
RUN git clone https://github.com/webduinoio/webduino-blockly.git \
    && mv webduino-blockly/* . \
    && rm -rf webduino-blockly \
    && npm install
    
EXPOSE 8080 1883
VOLUME ["/usr/src/app"]
CMD ["npm","start"]
