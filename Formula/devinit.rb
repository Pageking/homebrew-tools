class Devinit < Formula
  desc "Pageking CLI for initializing projects"
  homepage "https://github.com/Pageking/devinit"
  url "https://github.com/Pageking/devinit/archive/refs/tags/v1.1.5.tar.gz"
  sha256 "12ad9d307c3e04020a4d1720b8b05e3c8e464b3f778f7a2dcb85d2d6b208966e"
  version "1.1.5"
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
