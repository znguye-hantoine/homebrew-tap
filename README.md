# Usage Meter Homebrew tap

```sh
brew trust znguye-hantoine/usage-meter
brew install znguye-hantoine/usage-meter/usage-meter
```

Homebrew only loads casks from taps you trust, so the first line is needed once. To update later, run `brew update && brew upgrade --cask usage-meter`.

Prefer not to use Homebrew? Download the zip from the [latest release](https://github.com/znguye-hantoine/homebrew-usage-meter/releases/latest), unzip it and drag **Usage Meter.app** into Applications.

## Usage Meter

A macOS menu bar item that shows your Claude plan usage: the current 5-hour session percentage, the weekly limits and when each one resets. Needs macOS 13 or later on Apple Silicon.

The app isn't signed with an Apple Developer ID, so macOS blocks the first launch. Open it once, then go to **System Settings > Privacy & Security** and click **Open Anyway**.

Usage Meter is an independent project. It is not affiliated with, endorsed by, or sponsored by Anthropic. Claude is a trademark of Anthropic, PBC.
