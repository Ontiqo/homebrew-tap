cask "guestbay" do
  version "1.6.0"
  sha256 "c757b8063fcc270b3e118f6ac5206f7f3c83fcf1e1f6bf1a65433d72933603fd"

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
