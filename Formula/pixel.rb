class Pixel < Formula
  desc "Pageking CLI for initializing projects"
  homepage "https://github.com/Pageking/pixel"
  url "https://github.com/Pageking/pixel/archive/refs/tags/v1.0.28.tar.gz"
  sha256 "181c4dac15484f9be3b4931da042e7372ce4099e55edf665daa9ad3389a347d6"
  version "1.0.28"
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
