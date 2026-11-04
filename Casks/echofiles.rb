cask "echofiles" do
  version "1.0.9"
  sha256 "c32bf645bbfb1b570919e297200ca4ea06b9f218cf4815957b10626873d76034"

  url "https://download.echofiles.app/#{version}/echofiles-#{version}.dmg"
  name "Echofiles"
  desc "Keeps folders in sync between your own computers and phones, peer to peer"
  homepage "https://echofiles.app/"

  # the app updates itself (Sparkle, the signed appcast on download.echofiles.app)
  auto_updates true
  depends_on macos: ">= :ventura"

  app "Echofiles.app"
end
