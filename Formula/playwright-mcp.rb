class PlaywrightMcp < Formula
  desc "Playwright tools for MCP"
  homepage "https://playwright.dev"
  url "https://registry.npmjs.org/@playwright/mcp/-/mcp-0.0.86.tgz"
  sha256 "a72b824664ebf803f3ae57ad9500a50ede12af44203482e74bcc64f9149d6ea1"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :npm
  end

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_path_exists bin/"playwright-mcp"
  end
end
