# frozen_string_literal: true

cask "blip-ai" do
  version "0.5.6"
  sha256 "741991112d5f603468b5aee05c3d75bba4e776f31485efa18738d62b061c1503"

  url "https://github.com/abnsl0014/blipai-releases/releases/download/v#{version}/Blip-AI-#{version}-universal.dmg"
  name "Blip AI"
  desc "AI desktop assistant"
  homepage "https://github.com/abnsl0014/blipai-releases"

  livecheck do
    url "https://github.com/abnsl0014/blipai-releases/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Blip-AI.app"

  zap trash: [
    "~/Library/Application Support/Blip-AI",
    "~/Library/Caches/com.blipai.app",
    "~/Library/Preferences/com.blipai.app.plist",
  ]
end
