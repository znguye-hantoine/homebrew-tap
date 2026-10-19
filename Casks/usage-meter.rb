cask "usage-meter" do
  version "0.1.1"
  sha256 "c374e8588a14af5f2be9473339d2cfd4f91702509f4c3ea0ba0dbf1798c0bf80"

  url "https://github.com/znguye-hantoine/homebrew-usage-meter/releases/download/usage-meter-v#{version}/Usage-Meter-#{version}.zip"
  name "Usage Meter"
  desc "Menu bar meter for Claude plan usage"
  homepage "https://github.com/znguye-hantoine/homebrew-usage-meter"

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
