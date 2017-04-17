FROM node:boron
MAINTAINER leejoneshane@gmail.com

EXPOSE 8073
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN git clone https://github.com/webduinoio/webduino-blockly.git \
    && cd webduino-blockly \
    && npm install -g bower \
    && bower install

CMD ["npm","start"]
