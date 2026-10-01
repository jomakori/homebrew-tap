cask "openkite" do
  version "0.42.1"

  on_arm do
    url "https://github.com/jomakori/openkite/releases/download/v#{version}/openkite_#{version}_macos_arm64.dmg"
    sha256 "7f83a32a6c466fbb28b54db273edb30a74b14ea0014978d7dc5a9dab88a86d5f"
  end
  on_intel do
    url "https://github.com/jomakori/openkite/releases/download/v#{version}/openkite_#{version}_macos_amd64.dmg"
    sha256 "b5f7080fa4f94256806bb363f81e6d17646d361f6736dc8d15dc6257a150d294"
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
