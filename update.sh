#!/bin/bash
git submodule update --recursive --remote
git stage --update
git commit -m "Updated subrepos (script)"
git push origin master\:refs/heads/master
