cask "echofiles" do
  version "1.0.11"
  sha256 "22e2d5f9a2b2d1563fb55e9c2d0d87a2ad6a5b2ae744a036b63c7b16b1544e41"

  url "https://download.echofiles.app/#{version}/echofiles-#{version}.dmg"
  name "Echofiles"
  desc "Keeps folders in sync between your own computers and phones, peer to peer"
  homepage "https://echofiles.app/"

  # the app updates itself (Sparkle, the signed appcast on download.echofiles.app)
  auto_updates true
  depends_on macos: ">= :ventura"

  app "Echofiles.app"
end
