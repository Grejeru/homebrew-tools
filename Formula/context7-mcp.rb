class Context7Mcp < Formula
  desc "MCP server for Context7 documentation"
  homepage "https://github.com/upstash/context7"
  url "https://registry.npmjs.org/@upstash/context7-mcp/-/context7-mcp-4.7.3.tgz"
  sha256 "ffa998e5c835fc5eff2ae59770531340e4d7ed42be00740c52893097425548af"
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
    assert_predicate bin/"context7-mcp", :exist?
  end
end
