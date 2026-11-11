cask "leafviewer" do
  version "2.5.2"
  sha256 "b0c66a74a4ab0aa5e41998b8fae5268bce175ec18a5a35618c7be93a7f0b0a7d"

  url "https://download.leafviewer.app/#{version}/leafviewer-#{version}.dmg"
  name "Leaf Viewer"
  desc "Read-only viewer for more than 1,700 kinds of file"
  homepage "https://leafviewer.app/"

  livecheck do
    url "https://download.leafviewer.app/manifest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :monterey"

  app "Leaf Viewer.app"

  zap trash: [
    "~/Library/Caches/com.ontiqo.leafviewer",
    "~/Library/Preferences/com.ontiqo.leafviewer.plist",
    "~/Library/Saved Application State/com.ontiqo.leafviewer.savedState",
  ]
end
