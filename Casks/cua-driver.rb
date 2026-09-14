# frozen_string_literal: true

cask "cua-driver" do
  version "0.14.1"
  sha256 "1eb81c84a2a455d2268ecf6ff12fc90063a8804c6db74ca9de93cd64a296939e"

  url "https://github.com/trycua/cua/releases/download/cua-driver-rs-v#{version}/cua-driver-rs-#{version}-darwin-universal.tar.gz"
  name "CuaDriver"
  desc "Computer-use driver for desktop automation"
  homepage "https://cua.ai/docs/how-to-guides/driver/install"

  livecheck do
    url "https://api.github.com/repos/trycua/cua/releases?per_page=100"
    regex(/"tag_name"\s*:\s*"cua-driver-rs-v?(\d+(?:\.\d+)+)"/i)
  end

  depends_on macos: :ventura

  app "cua-driver-rs-#{version}-darwin-universal/CuaDriver.app"
  binary "#{appdir}/CuaDriver.app/Contents/MacOS/cua-driver"

  zap trash: "~/.cua-driver"

  caveats <<~EOS
    Start the daemon through CuaDriver.app so Accessibility and Screen Recording
    permissions are attributed to the application:
      open -n -g -a CuaDriver --args serve
  EOS
end
