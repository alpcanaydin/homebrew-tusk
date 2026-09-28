cask "tusk" do
  version "0.1.0"
  sha256 "5f3166d75729501d0188e3d40dc9cc708ab95af5dbc4cb44297c68366283ce9f"

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
