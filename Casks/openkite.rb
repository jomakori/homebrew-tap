cask "openkite" do
  version "0.43.2"

  on_arm do
    url "https://github.com/jomakori/openkite/releases/download/v#{version}/openkite_#{version}_macos_arm64.dmg"
    sha256 "02b042ba51c1db3f70d0498de75110d62a32816dd66500fdc94156886b69700b"
  end
  on_intel do
    url "https://github.com/jomakori/openkite/releases/download/v#{version}/openkite_#{version}_macos_amd64.dmg"
    sha256 "4513441f03c3712a570446ba6bfb561e62793e974f54b8ff694a4652b7abcd12"
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
