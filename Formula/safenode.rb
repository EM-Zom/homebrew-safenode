# Homebrew Formula for safenode-cli.
#
# This file is rendered automatically by .github/workflows/release-cli.yml on
# each push of tag cli/vX.Y.Z. The rendered result is pushed to the dedicated
# tap repo github.com/em-zom/homebrew-safenode at Formula/safenode.rb.
#
# Placeholders replaced at render time:
#   0.1.1            -> X.Y.Z (e.g. 0.1.0)
#   77413dbbe7403fdccf5de4c8461a1dd490519c64a7c5a6270d027f9afcf8c5d6   -> sha256 of safenode-darwin-arm64.tar.gz
#   87c8c813544c5c823c936466ad5611a254099395484e3dfa5696cef702d43684   -> sha256 of safenode-darwin-amd64.tar.gz
#   fa2757e0456f24de0179348dbf92e6f8a475daafdbd41eb4280ae37ac32c472e    -> sha256 of safenode-linux-arm64.tar.gz
#   2538054b5bc7a4b0c0e9234274909baf89606afbfdd589f796ec99b11e08c311    -> sha256 of safenode-linux-amd64.tar.gz
class Safenode < Formula
  desc "Zero-knowledge CLI for the SafeNode credential vault"
  homepage "https://safenode.dev/cli"
  version "0.1.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/EM-Zom/API-Gateway/releases/download/cli/v#{version}/safenode-darwin-arm64.tar.gz"
      sha256 "77413dbbe7403fdccf5de4c8461a1dd490519c64a7c5a6270d027f9afcf8c5d6"
    end
    on_intel do
      url "https://github.com/EM-Zom/API-Gateway/releases/download/cli/v#{version}/safenode-darwin-amd64.tar.gz"
      sha256 "87c8c813544c5c823c936466ad5611a254099395484e3dfa5696cef702d43684"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/EM-Zom/API-Gateway/releases/download/cli/v#{version}/safenode-linux-arm64.tar.gz"
      sha256 "fa2757e0456f24de0179348dbf92e6f8a475daafdbd41eb4280ae37ac32c472e"
    end
    on_intel do
      url "https://github.com/EM-Zom/API-Gateway/releases/download/cli/v#{version}/safenode-linux-amd64.tar.gz"
      sha256 "2538054b5bc7a4b0c0e9234274909baf89606afbfdd589f796ec99b11e08c311"
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
