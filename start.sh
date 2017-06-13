#!/bin/sh

cd /usr/src/app
mosquitto -d -p 1833
npm start
