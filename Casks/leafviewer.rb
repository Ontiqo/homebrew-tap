cask "leafviewer" do
  version "2.2.0"
  sha256 "cc3418ab431193ed95ca7ac8459f9dc2f28bf9e4f4dd931388df6c58e87553b4"

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
