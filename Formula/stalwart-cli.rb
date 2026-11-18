class StalwartCli < Formula
  desc "Command line interface for the Stalwart mail server"
  homepage "https://github.com/stalwartlabs/cli"
  version "1.0.12"
  license any_of: ["AGPL-3.0-only", :cannot_represent]

  # Prebuilt arm64 binary from upstream releases (cargo-dist).
  on_macos do
    on_arm do
      url "https://github.com/stalwartlabs/cli/releases/download/v1.0.12/stalwart-cli-aarch64-apple-darwin.tar.xz"
      sha256 "4c3e2fcbcde593814739426dad369a84eaa82140daf751245a25c2761a5224cf"
    end
  end

  livecheck do
    url :homepage
    strategy :github_latest
  end

  def install
    bin.install "stalwart-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stalwart-cli --version")
  end
end
