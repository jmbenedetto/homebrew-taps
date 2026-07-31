# frozen_string_literal: true

cask "koofr" do
  version :latest
  sha256 :no_check

  url "https://app.koofr.net/dl/apps/osx"
  name "Koofr"
  desc "Desktop sync client for Koofr cloud storage"
  homepage "https://koofr.eu/"

  livecheck do
    skip "Vendor publishes only a mutable latest-download URL"
  end

  app "Koofr.app"

  zap trash: [
    "~/Library/Application Support/Koofr",
    "~/Library/Caches/net.koofr.storagegui.app",
    "~/Library/Preferences/net.koofr.storagegui.app.plist",
  ]

  caveats do
    requires_rosetta
  end
end
