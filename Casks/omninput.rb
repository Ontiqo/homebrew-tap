cask "omninput" do
  version "1.7.3"
  sha256 "26a73737390d313cb39cdd315a35437c2f5724c025eda5ed90b40c8174897a65"

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
