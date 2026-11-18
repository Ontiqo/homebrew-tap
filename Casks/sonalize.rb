cask "sonalize" do
  version "1.0.0"
  sha256 "a38637656677cf897908f9af9e5794cad245be18bace05313636e91543478e14"

  url "https://download.sonalize.app/release/#{version}/Sonalize_#{version}_universal.dmg"
  name "Sonalize"
  desc "Compare two songs by harmony, melody, rhythm, sound and shared audio"
  homepage "https://sonalize.app/"

  livecheck do
    url "https://download.sonalize.app/manifest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :catalina"

  app "Sonalize.app"

  zap trash: [
    "~/Library/Application Support/app.sonalize",
    "~/Library/Caches/app.sonalize",
    "~/Library/Preferences/app.sonalize.plist",
    "~/Library/Saved Application State/app.sonalize.savedState",
    "~/Library/WebKit/app.sonalize",
  ]
end
