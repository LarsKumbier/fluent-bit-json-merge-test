#!/bin/bash

i=0

while true; do
    echo "[#|$(date)|INFO|count=${i};flag=foo|It's a message - with some stuff|#]"
    ((i++))
    sleep 1
done