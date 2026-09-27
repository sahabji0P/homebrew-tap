cask "netra" do
  version "1.2.0"
  sha256 "85c32d0e479e656c68f4f7fafd83ad562b4e620eefc5a787c88c3b3697529049"

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
