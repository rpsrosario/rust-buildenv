#!/usr/bin/env bash

echo ':: Installing rustfmt ...' >&2

set -o errexit

if ! (rustup component add rustfmt); then
  echo '-- installing from source ...' >&2

  git_remote=https://github.com/rust-lang/rustfmt.git

  # we need to ignore v8.1 since that is an erroneous tag for v0.8.1
  tag=$(git ls-remote --refs --sort=-v:refname $git_remote 'refs/tags/v*' \
    | grep --invert-match 'v8.1' | head --lines 1 | sed 's:.*refs/tags/::')

  export CFG_RELEASE=$(rustc --version | cut -d' ' -f2 | cut -d- -f1)
  export CFG_RELEASE_CHANNEL=stable
  if (rustc --version | grep -q nightly); then
    export CFG_RELEASE_CHANNEL=nightly
  fi

  git clone $git_remote --branch $tag --depth 1 rustfmt
  cargo install --force --path rustfmt
  rm -rf rustfmt
fi
