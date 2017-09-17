#!/bin/sh
while true;
do
	ping -s 1 -c 1 'www.github.com' | grep -q 'ttl=' && echo "net OK!" && cd "/home/pi/.node-red" && unset GIT_DIR && git checkout master && git pull && node-red-stop && node-red-start && break || echo "try after 3 second..." && sleep 3
done