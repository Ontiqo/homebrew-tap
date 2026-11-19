cask "leafviewer" do
  version "2.7.0"
  sha256 "b2255372294c040171dcfd2ad00117de92c47989449a5f46dcfa112b1449366f"

  url "https://download.leafviewer.app/#{version}/leafviewer-#{version}.dmg"
  name "Leaf Viewer"
  desc "Read-only viewer for more than 2,200 kinds of file"
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
