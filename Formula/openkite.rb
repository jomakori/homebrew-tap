class Openkite < Formula
  desc "Kubernetes desktop IDE with plugin bridge"
  homepage "https://github.com/jomakori/openkite"
  url "https://github.com/jomakori/openkite/archive/refs/tags/v0.43.1.tar.gz"
  sha256 "fd5c0a543519d6e2324460f7f6bbd0163be52be57e2e314c42bb6f35d38ab175"
  license "MIT OR Apache-2.0"

  # Build-time only. The desktop link pulls webkit2gtk/gtk via pkg-config;
  # aws-lc-sys (kube TLS) builds with cmake.
  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "rust" => :build

  # Linux-only link deps. macOS builds against the system WebKit/AppKit
  # frameworks and needs none of these.
  on_linux do
    depends_on "gtk+3"
    depends_on "librsvg"
    depends_on "webkit2gtk"
    depends_on "xdotool" # provides libxdo (pkg-config xdo)
  end

  def install
    system "cargo", "install", "--locked", "--root", libexec, "--path", "."
    bin.install Dir[libexec/"bin/*"]
  end

  test do
    # GUI desktop app — no CLI surface to probe headless. Assert the
    # binary exists and is dynamically linked against the webview stack.
    assert_predicate bin/"openkite", :exist?
  end
end
