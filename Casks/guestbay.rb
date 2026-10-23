cask "guestbay" do
  version "1.7.0"
  sha256 "d8998d22d17a00788ccc4b4898659dd11e4edc5b79f2bfcdf2beaeb5f8c767bf"

  url "https://download.guestbay.app/#{version}/guestbay-#{version}.dmg"
  name "Guestbay"
  desc "Create and run QEMU virtual machines"
  homepage "https://guestbay.app/"

  livecheck do
    url "https://download.guestbay.app/manifest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  # Intel Macs need macOS 13 or later; Apple silicon Macs need macOS 15 or later.
  on_arm do
    depends_on macos: ">= :sequoia"
  end
  on_intel do
    depends_on macos: ">= :ventura"
  end
  # This edition uses the QEMU on the Mac (it finds Homebrew's).
  depends_on formula: "qemu"

  app "Guestbay.app"

  zap trash: [
    "~/Library/Caches/app.guestbay.desktop",
    "~/Library/HTTPStorages/app.guestbay.desktop",
    "~/Library/Preferences/app.guestbay.desktop.plist",
    "~/Library/Saved Application State/app.guestbay.desktop.savedState",
  ]
end
