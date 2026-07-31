# frozen_string_literal: true

cask "dart" do
  version "1.3.7"
  sha256 "6520eaaa77d69752721acf128ab523337ee9bca612f2d7a779381ecab6bb603e"

  url "https://github.com/its-dart/dart_desktop_builds/releases/download/v#{version}/Dart-#{version}-universal.dmg",
      verified: "github.com/its-dart/dart_desktop_builds/"
  name "Dart"
  desc "AI-powered project and task management desktop application"
  homepage "https://www.dartai.com/"

  livecheck do
    url "https://github.com/its-dart/dart_desktop_builds/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Dart.app"

  zap trash: [
    "~/Library/Application Support/Dart",
    "~/Library/Caches/com.electron.dart",
    "~/Library/Preferences/com.electron.dart.plist",
  ]
end
