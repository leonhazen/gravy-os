#!/usr/bin/env bash

set -oue pipefail

mkdir -p /usr/local/bin

wget https://oryx.nyc3.cdn.digitaloceanspaces.com/keymapp/keymapp-latest.tar.gz

tar -zxvf keymapp-latest.tar.gz

chmod +x keymapp
mv keymapp /usr/local/bin/keymapp

rm keymapp-latest.tar.gz
rm icon.png
