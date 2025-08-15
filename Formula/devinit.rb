class Devinit < Formula
  desc "Pageking CLI for initializing projects"
  homepage "https://github.com/Pageking/devinit"
  url "https://github.com/Pageking/devinit/archive/refs/tags/v1.1.6.tar.gz"
  sha256 "542764104eca032b77a0984ea7d86e854a93c7f05451867410ed81e79c081d3b"
  version "1.1.6"
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
