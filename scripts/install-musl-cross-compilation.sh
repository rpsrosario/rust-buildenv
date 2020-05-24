#!/usr/bin/env bash

echo ':: Installing musl cross-compilation ...' >&2

set -o errexit
rustup target add x86_64-unknown-linux-musl
