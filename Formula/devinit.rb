class Devinit < Formula
  desc "Pageking CLI for initializing projects"
  homepage "https://github.com/Pageking/devinit"
  url "https://github.com/Pageking/devinit/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "6d9d806187bf934a083c70221691416865667833cdf451a16627903bea11fdcd"
  version "1.1.0"
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
