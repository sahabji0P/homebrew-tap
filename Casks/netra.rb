cask "netra" do
  version "0.1.0"
  sha256 "40b76b15ae8230fcb8e4f1e77b0bd73df25b0c2a198b8507c6b51e692f336316"

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
