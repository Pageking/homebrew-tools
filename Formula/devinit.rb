class Devinit < Formula
  desc "Pageking CLI for initializing projects"
  homepage "https://github.com/Pageking/devinit"
  url "https://github.com/Pageking/devinit/archive/refs/tags/v1.1.4.tar.gz"
  sha256 "372eeb98c20880a5c18ffeb14cbb5788090ad47c69c81489eb9d8e353aaa7da2"
  version "1.1.4"
  license "MIT"
  head "https://github.com/Pageking/devinit.git"

  depends_on "jq"
  depends_on "gh"
  depends_on "git"

  def install
    bin.install "devinit"
    libexec.install "lib"
    prefix.install "config"
  end

  test do
    system "#{bin}/devinit"
  end
end
