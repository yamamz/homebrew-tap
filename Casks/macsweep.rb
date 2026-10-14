cask "macsweep" do
  version "1.0.1"
  sha256 "d1853cbd38f0a1425d5396f65d8b42eb92de6dee1c3e28f9c22f326e6cd398be"

  url "https://github.com/yamamz/MacCleaner/releases/download/v#{version}/MacSweep-#{version}.zip"
  name "MacSweep"
  desc "Cleaner for caches, simulators, emulators, large files, duplicates and adware"
  homepage "https://github.com/yamamz/MacCleaner"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "MacSweep.app"

  zap trash: [
    "~/Library/Preferences/com.macsweep.app.plist",
    "~/Library/Saved Application State/com.macsweep.app.savedState",
  ]

  caveats <<~EOS
    MacSweep isn't notarized by Apple, so macOS blocks it the first time you open it.
    Open it once, then go to System Settings › Privacy & Security and click "Open Anyway".

    For full results, add MacSweep in System Settings › Privacy & Security › Full Disk Access.
  EOS
end
