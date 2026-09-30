cask "tusk" do
  version "0.2.0"
  sha256 "52df92e59afee19f61c278881cd7d45ebfef2c919ba6fdb4ff7d29f744db0398"

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
