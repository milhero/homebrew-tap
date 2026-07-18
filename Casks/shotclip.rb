cask "shotclip" do
  version "1.1.0"
  sha256 "153117bf918bb0e21c851348e01eaa0d3614ac93d72e1c73c45886d9bc11e05e"

  url "https://github.com/milhero/ShotClip/releases/download/v#{version}/ShotClip-v#{version}.zip"
  name "ShotClip"
  desc "Save screenshots to a file and the clipboard at the same time"
  homepage "https://github.com/milhero/ShotClip"

  depends_on macos: ">= :ventura"

  app "ShotClip.app"

  zap trash: [
    "~/Library/Preferences/com.milanronneberg.ShotClip.plist",
  ]
end
