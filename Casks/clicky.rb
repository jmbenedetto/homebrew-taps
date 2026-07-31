# frozen_string_literal: true

cask "clicky" do
  version "1.0.44,53"
  sha256 "4b9edd5b3a8d4c596fb63e7df1212a8ed387c6571b8f5ce67fbf869275357550"

  url "https://github.com/farzaa/clicky-releases/releases/download/v#{version.csv.first}/HeyClicky.dmg",
      verified: "github.com/farzaa/clicky-releases/"
  name "HeyClicky"
  desc "AI desktop assistant with computer-use capabilities"
  homepage "https://www.heyclicky.com/"

  livecheck do
    url "https://farzaa.github.io/clicky-releases/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: :sonoma

  app "HeyClicky.app"

  zap trash: [
    "~/Library/Application Support/Clicky",
    "~/Library/Caches/com.humansongs.clicky",
    "~/Library/HTTPStorages/com.humansongs.clicky",
    "~/Library/Preferences/com.humansongs.clicky.plist",
  ]
end
