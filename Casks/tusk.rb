cask "tusk" do
  version "0.1.1"
  sha256 "4323bc22a8af46867432c262f4de7df7e6b1fcccd638c3348e84430091094a01"

  url "https://github.com/alpcanaydin/tusk/releases/download/v#{version}/Tusk-#{version}-arm64.dmg"
  name "Tusk"
  desc "Fast, native, keyboard-driven database client"
  homepage "https://github.com/alpcanaydin/tusk"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Tusk.app"

  zap trash: [
    "~/Library/Application Support/tusk",
    "~/Library/Caches/ai.reyz.tusk",
    "~/Library/HTTPStorages/ai.reyz.tusk",
    "~/Library/Preferences/ai.reyz.tusk.plist",
    "~/Library/Saved Application State/ai.reyz.tusk.savedState",
  ]
end
