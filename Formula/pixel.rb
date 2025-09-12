class Pixel < Formula
  desc "Pageking CLI for initializing projects"
  homepage "https://github.com/Pageking/pixel"
  url "https://github.com/Pageking/pixel/archive/refs/tags/v1.0.11.tar.gz"
  sha256 "25aeef29c400d779c8372515d3a1d5146453f47b70634bd70718d1e422d9670f"
  version "1.0.11"
  license ""
  head "https://github.com/Pageking/pixel.git"

  depends_on "jq"
  depends_on "gh"
  depends_on "git"
  depends_on "sshpass"

  def install
    bin.install "pixel"
    libexec.install "lib"
    prefix.install "config"
  end

  test do
    system "#{bin}/pixel"
  end
end
