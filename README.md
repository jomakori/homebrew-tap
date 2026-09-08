# Homebrew tap for OpenKite

Install the OpenKite desktop app:

**macOS (cask — Apple Silicon + Intel):**

```sh
brew tap jomakori/homebrew-tap
brew install --cask openkite
```

**Linux (formula — builds from source, any arch):**

```sh
brew tap jomakori/homebrew-tap
brew install openkite
```

> The formula compiles from the tagged source tarball, so first install
> takes a while (full cargo build + webkit/gtk link deps).

## How this stays current

The cask's `version` + both arch `sha256`s and the formula's version +
source-tarball sha256 are updated automatically by the
[openkite release workflow](https://github.com/jomakori/openkite/blob/main/.github/workflows/release.yml)
(`publish-tap` job) on every published release. Checksums come from the
GitHub API asset digests — no artifact downloads needed.

Manual update (if you ever need it):

```sh
curl -s "https://api.github.com/repos/jomakori/openkite/releases/tags/v<VER>" | \
  jq -r '.assets[] | select(.name | contains("_macos_arm64.dmg")) | .digest'
# paste the sha256:… value into Casks/openkite.rb and bump version
```

> Only macOS is cask-served. Linux ships AppImage artifacts from the
> GitHub release; Windows ships NSIS `.exe` installers and a Chocolatey
> package on GitHub Packages. See the
> [release page](https://github.com/jomakori/openkite/releases).
