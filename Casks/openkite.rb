cask "openkite" do
  version "0.43.0"

  on_arm do
    url "https://github.com/jomakori/openkite/releases/download/v#{version}/openkite_#{version}_macos_arm64.dmg"
    sha256 "6e5c59d5f54a300d169d1a0d66692c8948b367da755a3fddebcbdc5a93c6e55c"
  end
  on_intel do
    url "https://github.com/jomakori/openkite/releases/download/v#{version}/openkite_#{version}_macos_amd64.dmg"
    sha256 "1fa85b77f8a0db971b1cf0a2d4e16cb89b020e2ce7a585d52f492d0750b8a6d2"
  end

  name "OpenKite"
  desc "Kubernetes desktop IDE with plugin bridge"
  homepage "https://github.com/jomakori/openkite"

  app "OpenKite.app"

  zap trash: [
    "~/.openkite",
    "~/Library/Application Support/com.openkite.app",
    "~/Library/Caches/com.openkite.app",
  ]
end
