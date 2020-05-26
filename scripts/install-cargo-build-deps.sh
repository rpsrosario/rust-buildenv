#!/usr/bin/env bash

echo ':: Installing cargo-build-deps (fork) ...' >&2

set -o errexit

# install fork since the main tool doesn't seem to work anymore
cargo install --git https://github.com/romac/cargo-build-deps.git
