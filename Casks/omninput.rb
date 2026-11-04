cask "omninput" do
  version "1.7.6"
  sha256 "a5d65443364a501ca2be8e9d86bbd1a0daccf7fd6310599abfa4c96bd8630c66"

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
