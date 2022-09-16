## vmess-link-generator

A docker tool for vmess link generating from server config file.


### How to Use


#### sync config.json with your vmess server configure


#### Update iplists.txt with all your vmess server addresses

#### Run docker to generate your vmess links

```bash

docker run -it --name vmess-tool -v conf:/opt/vmess-link-tool/conf sunnywalden/vmess-link-generator:latest

```


### Update Alias in link (Option)

If you wanna name your server alias yourself, here it is:

1) copy the link generated without "vmess//"

2) decode it via a base64 tool

3) update "ps" attribute

4) then decode the updated vmess info with tool

5) add "vmess//" prefix.


### Thanks for These Projects

boypt/vmess2json[https://raw.github.com/boypt/vmess2json]

