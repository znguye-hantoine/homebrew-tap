cask "usage-meter" do
  version "0.1.0"
  sha256 "66cd6ca4c514396bfe6ffadf119d38d999a5832def721c4dc9a25fb234883ff7"

  url "https://github.com/znguye-hantoine/homebrew-tap/releases/download/usage-meter-v#{version}/Usage-Meter-#{version}.zip"
  name "Usage Meter"
  desc "Menu bar meter for Claude plan usage"
  homepage "https://github.com/znguye-hantoine/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Usage Meter.app"

  uninstall quit: "local.usage-meter.menubar"

  zap trash: [
    "~/Library/Application Support/UsageMeter",
    "~/Library/Preferences/local.usage-meter.menubar.plist",
  ]

  caveats <<~EOS
    Usage Meter isn't signed with an Apple Developer ID, so macOS blocks the first launch.
    Open it once, then go to System Settings > Privacy & Security and click "Open Anyway".
  EOS
end
