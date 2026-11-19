class StalwartCli < Formula
  desc "Command-line interface for the Stalwart mail server"
  homepage "https://github.com/stalwartlabs/cli"
  url "https://github.com/stalwartlabs/cli/releases/download/v2.0.0/stalwart-cli-aarch64-apple-darwin.tar.xz"
  sha256 "f190697e04460d5d4ce118d70f5b22341e543710468f3aa6e59fb3219a2923a3"
  license any_of: ["AGPL-3.0-only", :cannot_represent]

  livecheck do
    url :homepage
    strategy :github_latest
  end

  # Prebuilt arm64 macOS binary from upstream releases (cargo-dist).
  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "stalwart-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stalwart-cli --version")
  end
end
