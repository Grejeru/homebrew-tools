class Context7Mcp < Formula
  desc "MCP server for Context7 documentation"
  homepage "https://github.com/upstash/context7"
  url "https://registry.npmjs.org/@upstash/context7-mcp/-/context7-mcp-4.9.1.tgz"
  sha256 "35b00e3a3b72628141f8e74325750063ce19b12339c2907a18ca77011c96ab61"
  license "MIT"

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
    assert_path_exists bin/"context7-mcp"
  end
end
