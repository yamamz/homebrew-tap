# yamamz/tap

Homebrew tap for [MacSweep](https://github.com/yamamz/MacCleaner), a native Mac cleaner.

## Install
```bash
brew install --cask yamamz/tap/macsweep
```
Update with `brew upgrade --cask macsweep`; uninstall with `brew uninstall --cask macsweep`
(add `--zap` to also remove its preferences).

MacSweep isn't notarized by Apple, so the first time you open it macOS blocks it.
Open it once, then go to **System Settings › Privacy & Security** and click **Open Anyway**.

## Maintenance
A daily workflow (`brew bump`) opens a pull request when a new MacSweep release is published on GitHub.
