cask "echofiles" do
  version "1.0.8"
  sha256 "740ecfeb54ee1fec3fe38eb95a0c448df5345ed6e1666ca714be48ed9e67e47d"

  url "https://download.echofiles.app/#{version}/echofiles-#{version}.dmg"
  name "Echofiles"
  desc "Keeps folders in sync between your own computers, peer to peer"
  homepage "https://echofiles.app/"

  depends_on macos: ">= :ventura"

  app "Echofiles.app"
end
