cask "leafviewer" do
  version "2.6.0"
  sha256 "6a745bcd0c29977a4fe63285db94c8b20c23e155b970d26f5aaf59e5cf95ef00"

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
