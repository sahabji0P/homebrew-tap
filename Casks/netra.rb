cask "netra" do
  version "0.1.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/sahabji0P/netra/releases/download/v#{version}/Netra-#{version}.zip"
  name "Netra"
  desc "Menu bar eye on coding-agent usage, cost, and quotas — with agent-aware keep-awake"
  homepage "https://github.com/sahabji0P/netra"

  depends_on macos: ">= :sonoma"

  app "Netra.app"

  uninstall quit: "in.airaai.netra"

  zap trash: [
    "~/Library/Application Support/Netra",
  ]

  caveats <<~EOS
    Netra is not notarized yet. Install with:
      brew install --cask --no-quarantine sahabji0P/tap/netra
  EOS
end
