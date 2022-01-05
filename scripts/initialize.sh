#!/bin/bash

ARCHIVER_DB_LOCATION="chenyang@162.243.35.91:~/databases-backup"
ARCHIVER_DBS=("Hackers-at-Berkeley.db" "RIG.db")
ARCHIVER_DB_TARGET="../archiver/facebook-group-archiver/databases"

mkdir -p $ARCHIVER_DB_TARGET

for db in ${ARCHIVER_DBS[*]}; do
    scp $ARCHIVER_DB_LOCATION/$db $ARCHIVER_DB_TARGET
    chmod 644 $ARCHIVER_DB_TARGET/$db
done

./visualizer_secret.py > ../visualizer/python-visualizer/secret.py
