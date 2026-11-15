cask "nimbledb" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.2"
  sha256 arm:   "876e5f0e4518df1896e9ee47c4fb0633391cfd9c432fd4d683a83bafa13a6970",
         intel: "49691be7c236fbd862cd59ed120feab6ae13e7f5fd02d02c57d2d6de28fc821e"

  url "https://github.com/Minh0001/homebrew-nimbledb/releases/download/v#{version}/NimbleDB-#{version}-macos-#{arch}.dmg"
  name "NimbleDB"
  desc "Desktop client for PostgreSQL, MongoDB, MySQL and SQL Server"
  homepage "https://github.com/Minh0001/homebrew-nimbledb"

  depends_on :macos

  app "NimbleDB.app"

  caveats <<~EOS
    NimbleDB is currently ad-hoc signed and has not been notarized by Apple.
    macOS Gatekeeper may block opening it.
    SQL Server connections require Microsoft ODBC Driver 18, installed separately.
  EOS
end
