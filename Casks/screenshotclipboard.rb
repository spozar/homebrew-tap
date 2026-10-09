cask "screenshotclipboard" do
  version "1.1.0"
  sha256 "bfde52597d772e0f73f928ca9e1ba24c58cb1c8c42b888945ff34b33e2555fd8"

  url "https://github.com/spozar/ScreenShotClipboard/releases/download/v#{version}/ScreenShotClipboard.zip"
  name "ScreenShotClipboard"
  desc "Menu bar app that puts every screenshot on the clipboard instantly"
  homepage "https://github.com/spozar/ScreenShotClipboard"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "ScreenShotClipboard.app"

  uninstall quit: "se.mediaempire.screenshotclipboard"

  zap trash: [
    "~/Library/Caches/se.mediaempire.screenshotclipboard",
    "~/Library/Logs/ScreenShotClipboard.log",
    "~/Library/Preferences/se.mediaempire.screenshotclipboard.plist",
  ]
end
