#!/bin/bash

i=0

while true; do
    echo "{ \"MaiTime\": \"$(date)\", \"artist\": \"Jason Derulo\", \"lyrics\": \"Talk JSON to me\", \"dirty\": ${i} }" | jq -c -M
    ((i++))
    sleep 1
done