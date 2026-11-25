class Context7Mcp < Formula
  desc "MCP server for Context7 documentation"
  homepage "https://github.com/upstash/context7"
  url "https://registry.npmjs.org/@upstash/context7-mcp/-/context7-mcp-4.8.0.tgz"
  sha256 "a9a5b28932c7dcdfb3944c1d12f74b100e2addea724e19ad611e2ec67e392db7"
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
