#!/bin/sh

cd /usr/src/app
mosquitto -d -p 1883
npm start
