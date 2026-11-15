# NimbleDB Homebrew tap

Desktop database client for PostgreSQL, MongoDB, MySQL and Microsoft SQL Server.

## Install on macOS

```sh
brew tap Minh0001/nimbledb
brew install --cask nimbledb
```

Or install directly:

```sh
brew install --cask Minh0001/nimbledb/nimbledb
```

Homebrew automatically selects Apple Silicon or Intel and verifies SHA-256.

## Upgrade and uninstall

```sh
brew update
brew upgrade --cask nimbledb
brew uninstall --cask nimbledb
```

Uninstall does not delete connection profiles or saved credentials.

## Release notes

Version 0.4.2 is ad-hoc signed and has not been notarized by Apple. macOS Gatekeeper may block opening it. This is a third-party tap, not the official Homebrew cask repository.

SQL Server connections require Microsoft ODBC Driver 18 installed separately.

[Download macOS installers](https://github.com/Minh0001/homebrew-nimbledb/releases/latest)

This repository contains distribution metadata and macOS binaries. The application source is maintained separately.
