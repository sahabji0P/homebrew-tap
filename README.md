# Shashwat's Homebrew Tap

## Netra

Menu bar eye on coding-agent usage, cost, and quotas — with keep-awake.

    brew tap sahabji0P/tap
    brew trust sahabji0P/tap          # Homebrew 6+ asks once per third-party tap
    brew install --cask netra
    xattr -dr com.apple.quarantine /Applications/Netra.app   # until notarized

Update with `brew upgrade netra`.
