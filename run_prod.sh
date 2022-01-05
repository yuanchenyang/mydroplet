#!/bin/bash
git submodule update --recursive --remote
docker-compose -f docker-compose.yml -f docker-compose-prod.yml up --build -d
