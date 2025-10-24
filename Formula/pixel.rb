class Pixel < Formula
  desc "Pageking CLI for initializing projects"
  homepage "https://github.com/Pageking/pixel"
  url "https://github.com/Pageking/pixel/archive/refs/tags/v1.0.33.tar.gz"
  sha256 "fdf6483ee01ab02c4969e96cd1c2cf715e32db2b546c18ac7ad8bc475e616918"
  version "1.0.33"
  license ""
  head "https://github.com/Pageking/pixel.git"

  devel do
    url "https://github.com/Pageking/pixel/archive/refs/tags/v1.0.34-beta.tar.gz"
    sha256 "f1a53f5ba7cc123150d18472e6cc2d4f739a3c73253eac312da82590af6ee1bd"
    version "1.0.34-beta"
  end

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
