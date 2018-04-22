#!/bin/bash

sudo docker build -t geoserver-webapp:latest .
sudo docker run -d -p 0.0.0.0:8080:8080 geoserver-webapp:latest
