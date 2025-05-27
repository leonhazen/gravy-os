#!/usr/bin/env bash

set -oue pipefail

curl https://raw.githubusercontent.com/jarun/advcpmv/master/install.sh --create-dirs -o ./advcpmv/install.sh && (cd advcpmv && sh install.sh)
mv ./advcpmv/advcp /usr/local/bin/cpg
mv ./advcpmv/advmv /usr/local/bin/mvg
