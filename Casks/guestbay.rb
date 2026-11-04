cask "guestbay" do
  version "1.8.0"
  sha256 "b6699284da3435a9021bb222800f0110086a835b26c9badcc04e73d4dd66f879"

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
