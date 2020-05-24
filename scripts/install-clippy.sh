#!/usr/bin/env bash

echo ':: Installing clippy ...' >&2

set -o errexit

if ! (rustup component add clippy); then
  echo '-- installing from source ...' >&2

  git_remote=https://github.com/rust-lang/rust-clippy.git

  tag=$(git ls-remote --refs --sort=-v:refname $git_remote 'refs/tags/rust-*' \
    | head --lines 1 | sed 's:.*refs/tags/::')

  git clone $git_remote --branch $tag --depth 1 clippy
  cargo install --force --path clippy
  rm -rf clippy
fi
