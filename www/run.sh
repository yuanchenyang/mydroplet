#!/bin/bash

docker run -d -p 8000:80 --restart unless-stopped --log-driver journald --name www yuanchenyang/www
