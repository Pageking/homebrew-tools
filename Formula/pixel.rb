class Pixel < Formula
  desc "Pageking CLI for initializing projects"
  homepage "https://github.com/Pageking/pixel"
  url "https://github.com/Pageking/pixel/archive/refs/tags/v1.7.0.tar.gz"
  sha256 "f4fd6b34f227cc2256a43ff85a486472f81f28ee24b01073dbc82a9b68fa6545"
  version "1.7.0"
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
