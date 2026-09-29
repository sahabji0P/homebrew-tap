cask "netra" do
  version "1.2.5"
  sha256 "51b171b6d475525da0df52d906b0e1d70db39d283f6950f85c6597d680db2885"

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
