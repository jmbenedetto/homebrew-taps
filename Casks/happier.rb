# frozen_string_literal: true

cask "happier" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.2.0"
  sha256 arm:   "109a9ba53b67ca514405cb0dbb9c0d9a63c77e7c193ff0f521128b772e72a765",
         intel: "53060661bb5348569c3b375cfc5caeda829919b942c4897aae0172ce8c993965"

  url "https://github.com/happier-dev/happier/releases/download/ui-desktop-v#{version}/happier-ui-desktop-darwin-#{arch}-v#{version}.dmg",
      verified: "github.com/happier-dev/happier/"
  name "Happier"
  desc "Cross-device companion for AI coding agents"
  homepage "https://happier.dev/"

  livecheck do
    url "https://github.com/happier-dev/happier/releases/download/ui-desktop-stable/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on :macos

  app "Happier.app"

  zap trash: [
    "~/Library/Application Support/dev.happier.app",
    "~/Library/Caches/dev.happier.app",
    "~/Library/HTTPStorages/dev.happier.app",
    "~/Library/Preferences/dev.happier.app.plist",
    "~/Library/Saved Application State/dev.happier.app.savedState",
    "~/Library/WebKit/dev.happier.app",
  ]
end
