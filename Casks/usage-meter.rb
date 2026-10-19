cask "usage-meter" do
  version "0.1.2"
  sha256 "64fef83268dec52f599564b792c01861d3e988237af0025b7625a5a6d2732c03"

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
