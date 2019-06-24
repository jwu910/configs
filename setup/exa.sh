#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

curl -s https://api.github.com/repos/ogham/exa/releases/latest \
| grep "browser_download_url.*linux" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi - &&

unzip exa-linux-x86_64-0.8.0.zip &&
rm exa-linux*.zip &&
mv exa-linux* /usr/bin/exa

