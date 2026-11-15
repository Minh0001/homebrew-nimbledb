# NimbleDB Homebrew tap

Native Rust desktop database client for PostgreSQL, MongoDB, MySQL and Microsoft SQL Server.

## Install on macOS

Requires macOS 12 or newer. Homebrew selects Apple Silicon or Intel and verifies SHA-256.

```sh
brew install --cask Minh0001/nimbledb/nimbledb
```

## Upgrade and uninstall

```sh
brew update
brew upgrade --cask nimbledb
brew uninstall --cask nimbledb
```

Uninstall does not delete connection profiles or saved credentials.

## Release notes

Version 0.6.0 adds SSH tunnels, local query history, independent connection workspaces and query tabs.

The app is ad-hoc signed and has not been notarized by Apple. macOS Gatekeeper may block opening it. This is a third-party tap, not the official Homebrew cask repository.

SQL Server uses the native Rust TDS driver; Microsoft ODBC Driver is no longer required.

SSH uses OpenSSH with a key or unlocked SSH agent and a trusted known_hosts entry. It supports single-host database URIs. TLS options remain unchanged, but certificates valid only for the remote DNS name fail verification against the forwarded 127.0.0.1 endpoint.

Query history stores local plaintext query text and can be disabled or cleared. Tabs and recording toggles are session-only. Existing Qt profiles and credentials are preserved, but connection profiles must be recreated in Rust.

[Download macOS installers](https://github.com/Minh0001/homebrew-nimbledb/releases/latest)

This repository contains distribution metadata and macOS binaries. The application source is maintained separately.
