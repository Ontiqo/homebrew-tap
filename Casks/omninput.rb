cask "omninput" do
  version "1.7.7"
  sha256 "028cab3604936efab6041ed256e9de1a238adf265e89277f8e4049119b286879"

  url "https://omninput.app/download/omninput-macos.dmg"
  name "Omninput"
  desc "Software KVM: one keyboard, mouse and monitor across Windows, macOS and Linux"
  homepage "https://omninput.app/"

  livecheck do
    url "https://omninput.app/download/manifest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :ventura"

  app "Omninput.app"
end
