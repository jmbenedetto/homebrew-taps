# frozen_string_literal: true

cask "vial" do
  version "0.7.5"
  sha256 "b628db11f8df012faafcceef7deb36b54821b507d4c970336f85a56c800e8876"

  url "https://github.com/vial-kb/vial-gui/releases/download/v#{version}/Vial-v#{version}.dmg"
  name "Vial"
  desc "Configurator for compatible keyboards"
  homepage "https://get.vial.today/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Vial.app"

  zap trash: [
    "~/Library/Application Support/Vial",
    "~/Library/Caches/Vial",
    "~/Library/Preferences/com.vial.Vial.plist",
    "~/Library/Preferences/Vial.plist",
  ]

  caveats do
    requires_rosetta
    <<~EOS
      The upstream Vial application is unsigned and fails macOS Gatekeeper.
      This personal cask automates the official upstream download but does not
      make the application signed, notarized, or safer to run.
    EOS
  end
end
