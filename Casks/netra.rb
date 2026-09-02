cask "netra" do
  version "0.1.8"
  sha256 "a1b33a5c3356ccce6c50490796d5a02482f661c88c682fc7d4a6b6fb07ca7e15"

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
