cask "guestbay" do
  version "1.7.1"
  sha256 "2e151198ddf5e09df8a543662c1e3b497571478bf383445a0099a9e6528c3f40"

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
