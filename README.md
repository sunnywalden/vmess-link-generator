## vmess-link-generator

A docker tool for vmess link generating from server config file.


### How to Use


#### sync config.json with your vmess server configure


#### Update iplists.txt with all your vmess server addresses

#### Run docker to generate your vmess links

"""bash

docker run -it --name vmess-tool -v conf:/opt/vmess-link-tool/conf sunnywalden/vmess-link-generator:latest

"""


### Thanks for These Projects

boypt/vmess2json[https://raw.github.com/boypt/vmess2json]

