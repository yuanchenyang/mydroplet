#!/bin/bash
git submodule update --recursive --remote
docker-compose -f docker-compose.yml -f production.yml build
