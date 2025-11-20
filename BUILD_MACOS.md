# Building on macOS

This project originally used Nix, which has compatibility issues on macOS. This setup uses Cabal/GHC instead.

## Prerequisites

Install the required tools via Homebrew:

```bash
brew install ghc cabal-install pkg-config
```

The Xcode Command Line Tools must also be installed:

```bash
xcode-select --install
```

## Building

Run the build script:

```bash
./build.sh
```

This will:
1. Build the Hakyll site generator using Cabal
2. Generate the static site in `site/_site/`

## Publishing

Run the publish script:

```bash
./publi.sh
```

This will build the site and rsync it to the server.

## Technical Notes

The build script sets `CPLUS_INCLUDE_PATH` to point to the macOS SDK's C++ headers. This is required for the `digest` package (a transitive dependency) to compile correctly on macOS.
