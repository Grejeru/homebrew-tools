class PlaywrightMcp < Formula
  desc "Playwright tools for MCP"
  homepage "https://playwright.dev"
  url "https://registry.npmjs.org/@playwright/mcp/-/mcp-0.0.85.tgz"
  sha256 "fd79194bb184b92d4f580e0c291b21573d7bbb368402bdb505c101ecc10a4094"
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
    assert_predicate bin/"playwright-mcp", :exist?
  end
end
