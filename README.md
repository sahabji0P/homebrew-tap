# Shashwat's Homebrew Tap

## Netra (नेत्र — "the eye")

macOS menu-bar app: a glanceable view of coding-agent token usage, estimated
cost, and provider limits — with agent-aware keep-awake.

**Requires:** Apple Silicon Mac, macOS 14 (Sonoma) or newer.

### Install

```sh
brew tap sahabji0P/tap
brew trust sahabji0p/tap        # Homebrew 6+ asks once per third-party tap
brew install --cask netra
xattr -dr com.apple.quarantine /Applications/Netra.app   # until the app is notarized
open -a Netra
```

Run the `xattr` line **before** launching the app for the first time. If macOS
ever shows a "Netra is damaged" dialog, click **Cancel** — never "Move to
Trash" (that deletes the app while Homebrew still thinks it's installed).

Look for the eye icon in your menu bar. Netra reads your local Claude Code /
Codex / OpenCode session logs, so stats appear once you've run an agent at
least once on this machine.

### Upgrade

```sh
brew update                      # refreshes this tap — required, upgrade won't see new versions without it
brew upgrade --cask netra
xattr -dr com.apple.quarantine /Applications/Netra.app
```

### Troubleshooting

**`brew` keeps installing/reporting an old version** — your local clone of the
tap is stale and `brew update` didn't refresh it. Re-clone the tap:

```sh
brew untap --force sahabji0p/tap
brew tap sahabji0P/tap
brew trust sahabji0p/tap
brew install --cask netra
```

**Upgrade fails with "App source '/Applications/Netra.app' is not there"** —
the app was deleted (usually via the "damaged" dialog) while Homebrew still
has it on record. Reset and reinstall:

```sh
brew uninstall --cask --force netra
brew install --cask netra
xattr -dr com.apple.quarantine /Applications/Netra.app
```

**App runs but shows no stats** — open the menu; since v0.1.2 the empty state
explains why. To inspect from a terminal:

```sh
/Applications/Netra.app/Contents/Resources/ccusage-bin daily --json --offline | head -c 300
log show --last 10m --predicate 'subsystem == "com.sahabji0P.netra"' --info
```
