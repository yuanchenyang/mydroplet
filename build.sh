#!/bin/bash

git submodule update --recursive --remote
docker build -t yuanchenyang/vps-server .
