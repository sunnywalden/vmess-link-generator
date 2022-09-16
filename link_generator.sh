#!/bin/bash

chmod a+x json2vmess.py

echo 'List your ips in iplists.txt, each ip in a new line'

cat conf/iplists.txt|while read ip;do
	./json2vmess.py conf/config.json --addr ${ip};
done