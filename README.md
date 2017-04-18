# docker-webduino

This is a Docker image build for webduino-blockly on node.js server.

The webduino-blockly is Visual Programming Editor for Webduino base on Google's Blockly Library.
Google's Blockly is a web-based, visual programming editor. Users can drag blocks together to build programs.
more detail see https://github.com/webduinoio/webduino-blockly

To run the blockly editor, you must mapping tcp 8080 port when run the container first time, use command below:

docker run -p 80:8080 --name webduino -d leejoneshane/docker-webduino

Then go to http://docker_host_ip/index.html

If you want to change the webserver confuguration, you should copy the container's VOLUME data first, command below:

docker cp webduino:/usr/src/app /root/webduino

Then edit the /root/webduino/webserver.js change the port number or something else.
The next step, you must remove old container and run a new container with -v, command below:

docker run --name webduino -v /root/webduino:/usr/src/app -d leejoneshane/docker-webduino
