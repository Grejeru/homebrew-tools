class AwsAzureLogin < Formula
  desc "Log in to AWS via Azure AD (SAML) and obtain temporary credentials"
  homepage "https://github.com/aws-azure-login/aws-azure-login"
  url "https://registry.npmjs.org/aws-azure-login/-/aws-azure-login-3.6.4.tgz"
  sha256 "16af6113eb9b735a1266ac0ba6e884f1e2c01173f1e887bbfb5c38ca25540bbb"
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
    assert_path_exists bin/"aws-azure-login"
  end
end
