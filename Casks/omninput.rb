cask "omninput" do
  version "1.7.8"
  sha256 "2b67b9ca738a42d511b0571bc90879f632a5c40c3ce99c9d05610052a2c8c950"

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
