FROM node:boron
MAINTAINER leejoneshane@gmail.com

WORKDIR /usr/src/app
RUN npm install https://github.com/webduinoio/webduino-blockly.git#gh-pages
    
EXPOSE 8080
VOLUME ["/usr/src/app"]
CMD ["npm","start"]
