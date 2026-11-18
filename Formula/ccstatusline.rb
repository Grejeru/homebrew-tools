class Ccstatusline < Formula
  desc "Customizable status line formatter for Claude Code CLI"
  homepage "https://github.com/sirmalloc/ccstatusline"
  url "https://registry.npmjs.org/ccstatusline/-/ccstatusline-2.2.34.tgz"
  sha256 "4052d19f8703777e0ad354f17a31ba7466b88fcb9bf2c992965aa7e34d5fdf81"
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
    assert_path_exists bin/"ccstatusline"
  end
end
