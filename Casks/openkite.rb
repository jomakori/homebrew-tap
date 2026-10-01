cask "openkite" do
  version "0.43.3"

  on_arm do
    url "https://github.com/jomakori/openkite/releases/download/v#{version}/openkite_#{version}_macos_arm64.dmg"
    sha256 "810790fd77f7338c3dd8372efb780b7d6771e48c27058b6b056359931caa079b"
  end
  on_intel do
    url "https://github.com/jomakori/openkite/releases/download/v#{version}/openkite_#{version}_macos_amd64.dmg"
    sha256 "bf9fcb70a530c719cdcb5707733a2f77640546021c8909231c21c296fb84d7cd"
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
