#!/bin/bash
git submodule update --recursive --remote
sudo docker-compose -f docker-compose.yml -f docker-compose-dev.yml up --build
