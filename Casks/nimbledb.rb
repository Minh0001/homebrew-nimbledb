cask "nimbledb" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.0"
  sha256 arm:   "6ce2f744dfc64f94b33e28d755ecee7f83008f6a31e490878f66e45dbb150bf6",
         intel: "30f5808e06c52df88a36d1c2b6890cbe60fc29d005d2bf199d94621fddac3609"

  url "https://github.com/Minh0001/homebrew-nimbledb/releases/download/v#{version}/NimbleDB-#{version}-macos-#{arch}.dmg"
  name "NimbleDB"
  desc "Desktop client for PostgreSQL, MongoDB, MySQL and SQL Server"
  homepage "https://github.com/Minh0001/homebrew-nimbledb"

  depends_on macos: :monterey

  app "NimbleDB.app"

  caveats <<~EOS
    NimbleDB is currently ad-hoc signed and has not been notarized by Apple.
    macOS Gatekeeper may block opening it.
    SSH tunnels use OpenSSH with a key or SSH agent and a trusted known_hosts entry.
    Existing Qt connection profiles must be recreated in the Rust app.
  EOS
end
