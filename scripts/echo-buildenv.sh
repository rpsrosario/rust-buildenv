#!/usr/bin/env bash

git_version=$(git --version | cut -d' ' -f3)
httpie_version=$(http --version)
jq_version=$(jq --version | cut -d'-' -f2)

cargo_version=$(cargo --version | cut -d' ' -f2)
rustc_version=$(rustc --version | cut -d' ' -f2)
rustup_version=$(rustup --version | cut -d' ' -f2)

clippy_version=$(cargo clippy --version | cut -d' ' -f2)
rustfmt_version=$(rustfmt --version | cut -d' ' -f2)

cargo_build_deps_version=$(cargo build-deps --version | cut -d' ' -f2)
cargo_cache_version=$(cargo cache --version | cut -d' ' -f2)

musl_tools_version=$(dpkg -s musl-tools | grep Version | cut -d' ' -f2)

cat <<EOF
Rust Build Environment

  git: $git_version
  http: $httpie_version
  jq: $jq_version

  cargo: $cargo_version
  rust: $rustc_version
  rustup: $rustup_version

  clippy: $clippy_version
  rustfmt: $rustfmt_version

  cargo-build-deps: $cargo_build_deps_version
  cargo-cache: $cargo_cache_version

  musl-tools: $musl_tools_version
EOF
