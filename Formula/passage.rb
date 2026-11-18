class Passage < Formula
  desc "Fork of password-store (pass) that uses age instead of GnuPG"
  homepage "https://github.com/FiloSottile/passage"
  url "https://github.com/FiloSottile/passage/archive/refs/tags/1.7.4a2.tar.gz"
  sha256 "d4bd97be2eda4249b31c2042707ef70ba50385f6fb7791598f51be794168ee2c"
  license "GPL-2.0-or-later"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+[a-z]?\d*)$/i)
  end

  depends_on "age"
  depends_on "bash"
  depends_on "gnu-getopt"
  depends_on "tree"

  def install
    system "make", "install", "PREFIX=#{prefix}", "WITH_ALLCOMP=yes"
  end

  test do
    (testpath/".passage").mkpath
    system formula_opt_bin("age")/"age-keygen", "-o", testpath/".passage/identities"
    assert_match "passage: age-backed password manager", shell_output("#{bin}/passage version")
  end
end
