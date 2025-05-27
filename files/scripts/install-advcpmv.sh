#!/usr/bin/env bash

set -oue pipefail

mkdir -p /usr/local/bin

# configure doesn't like this running as root in build
export FORCE_UNSAFE_CONFIGURE=1

curl https://raw.githubusercontent.com/jarun/advcpmv/master/install.sh --create-dirs -o ./advcpmv/install.sh && (cd advcpmv && sh install.sh)

mv ./advcpmv/advcp /usr/local/bin/cpg
mv ./advcpmv/advmv /usr/local/bin/mvg
