#!/bin/bash
git submodule update --recursive --remote
docker-compose build
