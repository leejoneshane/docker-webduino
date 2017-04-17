# docker-webduino

This is a Docker image build for webduino-blockly on node.js server.

The webduino-blockly is Visual Programming Editor for Webduino base on Google's Blockly Library.
Google's Blockly is a web-based, visual programming editor. Users can drag blocks together to build programs.
more detail see https://github.com/webduinoio/webduino-blockly

To run the blockly editor, you must mapping tcp 8080 port when run the container first time, use command below:

docker run -p 80:8080 --name webduino -d leejoneshane/docker-webduino

Then go to http://docker_host_ip:8080/index.html
