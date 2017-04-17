FROM node:boron
MAINTAINER leejoneshane@gmail.com

EXPOSE 8080
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN git clone https://github.com/webduinoio/webduino-blockly.git \
    && cd webduino-blockly \
    && mv * ../ \
    && cd .. \
    && rm -rf webduino-blockly \
    && npm install
    
EXPOSE 8080
VOLUME ["/usr/src/app"]
CMD ["npm","start"]
