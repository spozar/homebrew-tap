cask "screenshotclipboard" do
  version :latest
  sha256 :no_check

  url "https://github.com/spozar/ScreenShotClipboard/releases/latest/download/ScreenShotClipboard.zip"
  name "ScreenShotClipboard"
  desc "Menu bar app that puts every screenshot on the clipboard instantly"
  homepage "https://github.com/spozar/ScreenShotClipboard"

  depends_on macos: :ventura

  app "ScreenShotClipboard.app"

  uninstall quit: "se.mediaempire.screenshotclipboard"

  zap trash: [
    "~/Library/Caches/se.mediaempire.screenshotclipboard",
    "~/Library/Logs/ScreenShotClipboard.log",
    "~/Library/Preferences/se.mediaempire.screenshotclipboard.plist",
  ]
end
