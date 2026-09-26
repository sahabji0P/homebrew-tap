cask "netra" do
  version "0.1.10"
  sha256 "1cb4a7d1133e2c54c3cc060ffc23ac62693852e69b077d1ef139853c1ce2a96c"

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
