#!/bin/bash

docker kill my-apache2

yes | docker system prune

docker pull markpeterangelo/my-apache2:latest

docker run -d --rm --name my-apache2 -p 80:80 markpeterangelo/my-apache2:latest
