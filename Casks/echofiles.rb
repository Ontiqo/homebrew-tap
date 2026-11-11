cask "echofiles" do
  version "1.0.10"
  sha256 "2d5247e9a39df92a9019a056a616b6c4e2cd02300a9e4a661ac6e4b28e1dd758"

  url "https://download.echofiles.app/#{version}/echofiles-#{version}.dmg"
  name "Echofiles"
  desc "Keeps folders in sync between your own computers and phones, peer to peer"
  homepage "https://echofiles.app/"

  # the app updates itself (Sparkle, the signed appcast on download.echofiles.app)
  auto_updates true
  depends_on macos: ">= :ventura"

  app "Echofiles.app"
end
