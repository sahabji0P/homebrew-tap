cask "netra" do
  version "0.1.1"
  sha256 "7e113c68d861e2ac401a57a80cb27303dc4e6a79a4d84f360b839a476bbdff45"

  url "https://github.com/sahabji0P/netra/releases/download/v#{version}/Netra-#{version}.zip"
  name "Netra"
  desc "Menu bar eye on coding-agent usage, cost, and quotas — with agent-aware keep-awake"
  homepage "https://github.com/sahabji0P/netra"

  depends_on macos: :sonoma

  app "Netra.app"

  uninstall quit: "in.airaai.netra"

  zap trash: [
    "~/Library/Application Support/Netra",
  ]

  caveats <<~EOS
    Netra is not notarized yet. After installing, allow it to run with:
      xattr -dr com.apple.quarantine /Applications/Netra.app
  EOS
end
