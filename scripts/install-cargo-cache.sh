#!/usr/bin/env bash

echo ':: Installing cargo-cache ...' >&2

set -o errexit
cargo install --force cargo-cache
