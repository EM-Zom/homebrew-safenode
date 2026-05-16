# This file is rendered automatically by the release-cli.yml workflow
# in github.com/EM-Zom/API-Gateway on every push of tag cli/vX.Y.Z.
#
# Do NOT edit by hand — your changes will be overwritten on the next release.
#
# This initial placeholder version (0.0.0) will be replaced when the first
# real release runs. `brew install safenode` will fail against 0.0.0 (no
# binaries exist for that version) — that's intentional.
class Safenode < Formula
  desc "Zero-knowledge CLI for the SafeNode credential vault"
  homepage "https://safenode.dev/cli"
  version "0.0.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/EM-Zom/API-Gateway/releases/download/cli/v#{version}/safenode-darwin-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/EM-Zom/API-Gateway/releases/download/cli/v#{version}/safenode-darwin-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/EM-Zom/API-Gateway/releases/download/cli/v#{version}/safenode-linux-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/EM-Zom/API-Gateway/releases/download/cli/v#{version}/safenode-linux-amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    arch_suffix = Hardware::CPU.arm? ? "arm64" : "amd64"
    os_suffix = OS.mac? ? "darwin" : "linux"
    bin.install "safenode-#{os_suffix}-#{arch_suffix}" => "safenode"
  end

  test do
    assert_match "safenode", shell_output("#{bin}/safenode --help 2>&1", 0..2)
  end
end
