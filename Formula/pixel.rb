class Pixel < Formula
  desc "Pageking CLI for initializing projects"
  homepage "https://github.com/Pageking/pixel"
  url "https://github.com/Pageking/pixel/archive/refs/tags/v1.8.0.tar.gz"
  sha256 "05afaa9c72c36689f303ab2d98d69144449848c290639af74bb64f9f864e59ef"
  version "1.8.0"
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
