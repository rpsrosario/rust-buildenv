#!/usr/bin/env bash

echo ':: Installing package dependencies ...' >&2

set -o errexit
apt-get update

apt-get install --assume-yes --no-install-recommends \
  git \
  httpie \
  jq \
#

rm -rf /var/lib/apt/lists/*
