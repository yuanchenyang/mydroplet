#!/bin/bash

docker run -d -p 8001:80 --restart unless-stopped --log-driver journald --name dashboard yuanchenyang/dashboard
