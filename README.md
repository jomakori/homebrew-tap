# Homebrew tap for OpenKite

Install the OpenKite desktop app (macOS arm64):

```sh
brew install jomakori/homebrew-tap/openkite
```

Or tap first, then install:

```sh
brew tap jomakori/homebrew-tap
brew install --cask openkite
```

## How this stays current

The cask's `version` and `sha256` are updated automatically by the
[openkite release workflow](https://github.com/jomakori/openkite/blob/main/.github/workflows/release.yml)
(`publish-tap` job) on every published release. It downloads the macOS
artifact from the GitHub release, recomputes the checksum, rewrites
`Casks/openkite.rb`, and pushes here.

Manual update (if you ever need it):

```sh
curl -sL -o /tmp/openkite.dmg \
  "https://github.com/jomakori/openkite/releases/download/v<VER>/openkite_<VER>_macos_arm64.dmg"
shasum -a 256 /tmp/openkite.dmg
# paste the hash into Casks/openkite.rb and bump version
```

> Only macOS arm64 is cask-served today. Linux ships AppImage artifacts from
> the GitHub release; Windows ships NSIS `.exe` installers. See the
> [release page](https://github.com/jomakori/openkite/releases).
