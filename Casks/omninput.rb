cask "omninput" do
  version "1.7.4"
  sha256 "31195d36fe24af17adf331867bb414dda901a94933be49ca255989aaf79d9146"

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
