class Devinit < Formula
  desc "Pageking CLI for initializing projects"
  homepage "https://github.com/Pageking/devinit"
  url "https://github.com/Pageking/devinit/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "228647a6c05f7042383efa4ba3fc80d7d4a6f7678dcde0b2474e01cb214576ef"
  version "1.1.3"
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
