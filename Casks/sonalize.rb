cask "sonalize" do
  version "1.0.1"
  sha256 "2cc30d2bf12f8d8e48ac02feca7ca372746aa653f0d411131c9cfd05c3162f6a"

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
    "~/Library/Application Support/Sonalize",
    "~/Library/Caches/app.sonalize",
    "~/Library/Preferences/app.sonalize.plist",
    "~/Library/Saved Application State/app.sonalize.savedState",
    "~/Library/WebKit/app.sonalize",
  ]
end
