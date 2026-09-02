cask "netra" do
  version "0.1.7"
  sha256 "f97aeda2ac5ff1bedf0711c56b6313757cedfcb87785032604ffb0e91c2a45a0"

  url "https://github.com/sahabji0P/netra/releases/download/v#{version}/Netra-#{version}.zip"
  name "Netra"
  desc "Menu bar eye on coding-agent usage, cost, and quotas — with agent-aware keep-awake"
  homepage "https://github.com/sahabji0P/netra"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Netra.app"

  uninstall quit: "com.sahabji0P.netra"

  zap trash: [
    "~/Library/Application Support/Netra",
  ]

  caveats <<~EOS
    Netra is not notarized yet. After installing, allow it to run with:
      xattr -dr com.apple.quarantine /Applications/Netra.app
  EOS
end
