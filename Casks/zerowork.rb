# frozen_string_literal: true

cask "zerowork" do
  version "1.1.75"
  sha256 "494970c445c3ac7688364c331fc7aba503deaf9a9698e5921e8805d14360789e"

  url "https://zerowork-agent-releases.s3.amazonaws.com/public/mac/ZeroWork-#{version}.dmg"
  name "ZeroWork"
  desc "Desktop agent for building and running automation taskbots"
  homepage "https://www.zerowork.io/"

  livecheck do
    url "https://zerowork-agent-releases.s3.amazonaws.com/public/mac/latest-mac.yml"
    regex(/^version:\s*v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  app "ZeroWork.app"

  zap trash: [
    "~/Library/Application Support/ZeroWork",
    "~/Library/Caches/io.zerowork.local-agent",
    "~/Library/Preferences/io.zerowork.local-agent.plist",
  ]
end
