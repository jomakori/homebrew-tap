cask "openkite" do
  version "0.43.1"

  on_arm do
    url "https://github.com/jomakori/openkite/releases/download/v#{version}/openkite_#{version}_macos_arm64.dmg"
    sha256 "33be32ae0b820b637dd1d895dc7658d3581a4e72408dac66e88c4b2f644ef8c8"
  end
  on_intel do
    url "https://github.com/jomakori/openkite/releases/download/v#{version}/openkite_#{version}_macos_amd64.dmg"
    sha256 "f09d3fa9142da3fd6cf8b494e3580383a43c6cefa0a467a72fd1e5c020127b48"
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
