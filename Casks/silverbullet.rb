# frozen_string_literal: true

cask "silverbullet" do
  version "2.10.0"
  sha256 "6e4d197db5c20c4b2cecb8767c06c97c27c8abc804124501aa8f75f822e3d37f"

  url "https://releases.silverbullet.plus/releases/#{version}/SilverBullet_#{version}_universal.dmg"
  name "SilverBullet"
  desc "Programmable, self-hosted note-taking application"
  homepage "https://silverbullet.plus/"

  livecheck do
    url "https://silverbullet.plus/download"
    regex(/SilverBullet[._-]v?(\d+(?:\.\d+)+)_universal\.dmg/i)
  end

  depends_on :macos

  app "SilverBullet.app"

  zap trash: [
    "~/Library/Application Support/SilverBullet",
    "~/Library/Caches/md.silverbullet.desktop",
    "~/Library/Preferences/md.silverbullet.desktop.plist",
  ]
end
