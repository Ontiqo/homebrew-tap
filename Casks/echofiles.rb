cask "echofiles" do
  version "1.0.7"
  sha256 "11cb5d929b8e1f285aee085370ebdedee22898de0b3e6b4698a48c089b46f313"

  url "https://download.echofiles.app/Echofiles-#{version}.dmg"
  name "Echofiles"
  desc "Keeps folders in sync between your own computers, peer to peer"
  homepage "https://echofiles.app/"

  depends_on macos: ">= :ventura"

  app "Echofiles.app"
end
