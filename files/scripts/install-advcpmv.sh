#!/usr/bin/env bash

set -oue pipefail

curl https://raw.githubusercontent.com/jarun/advcpmv/master/install.sh --create-dirs -o ./advcpmv/install.sh && (cd advcpmv && sh install.sh)
mv ./advcpmv/advcp /usr/bin/cpg
mv ./advcpmv/advmv /usr/bin/mvg
