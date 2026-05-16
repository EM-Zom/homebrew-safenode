# em-zom/homebrew-safenode

Homebrew tap for [`safenode-cli`](https://safenode.dev/cli) — zero-knowledge
CLI for the [SafeNode](https://safenode.dev) credential vault.

## Install

```bash
brew tap em-zom/safenode
brew install safenode
```

After installation:

```bash
safenode --help
```

## What lives here

Only `Formula/safenode.rb`. Binaries are published as GitHub releases on the
main SafeNode repo: <https://github.com/EM-Zom/API-Gateway/releases>
(tags `cli/vX.Y.Z`).

The Formula in this repo is **rendered automatically** by the
[`release-cli.yml`](https://github.com/EM-Zom/API-Gateway/blob/main/.github/workflows/release-cli.yml)
workflow on every push of a `cli/v*` tag. Do not edit `Formula/safenode.rb`
by hand — your changes will be overwritten on the next release.

## License

The Formula itself is published under the same license as SafeNode:
AGPL-3.0-or-later. The binaries it installs follow the upstream license.
