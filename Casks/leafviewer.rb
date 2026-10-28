cask "leafviewer" do
  version "2.1.3"
  sha256 "8d069f79f27d6f211eb0c7a161f3f13732898721343b9b55d34ce30353775b66"

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
