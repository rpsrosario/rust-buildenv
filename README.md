# Rust Build Environment

A set of [docker][00] images prepared for providing a comprehensive build
environment for [rust][01] projects. There are four images to choose from,
depending on your needs:

- [`stable`][D0]: Based on the `latest` tag of the official [rust docker
  image][H0];

- [`stable-slim`][D1]: Based on the `slim` tag of the official [rust docker
  image][H0];

- [`nightly`][D2]: Based on the `nightly` tag of the nightly [rust docker
  image][H1];

- [`nightly-slim`][D3]: Based on the `nightly-slim` tag of the nightly [rust
  docker image][H1];

Each one of the built images is guaranteed to provide some extra tools. However,
these tools are installed automatically from either the package directory or the
latest source release, so no guarantee is performed as to a specific version of
the tools being installed. The provided tools are:

- Rustup components
  - [clippy](https://github.com/rust-lang/rust-clippy)
  - [rustfmt](https://github.com/rust-lang/rustfmt)

- Cargo Subcommands
  - [cargo-build-deps](https://github.com/romac/cargo-build-deps)
  - [cargo-cache](https://crates.io/crates/cargo-cache)

- General tools
  - [git](https://git-scm.com/)
  - [HTTPie](https://httpie.org/)
  - [jq](https://stedolan.github.io/jq/)

- Extra Compilation Targets
  - `x86_64-unknown-linux-musl`

A utility script is supplied to check the versions of all of the tools provided
in the build environment. This script is executed on shell login so that you
always have the summary of the build environment, however you can invoke it
yourself with `echo-buildenv.sh`, if necessary.

If you do not want to build the images yourself you can always use one of the
[pre-built images][H2] available. The nightly tags are built once per day while
the stable tags are built once per week. All tags are built on new commits to
the repository. Overall the build environments should be fairly up-to-date.

[D0]: Dockerfile.stable
[D1]: Dockerfile.stable-slim
[D2]: Dockerfile.nightly
[D3]: Dockerfile.nightly-slim
[H0]: https://hub.docker.com/_/rust
[H1]: https://hub.docker.com/r/rustlang/rust
[H2]: https://hub.docker.com/r/rpsrosario/rust-buildenv
[00]: https://www.docker.com/
[01]: https://www.rust-lang.org/
