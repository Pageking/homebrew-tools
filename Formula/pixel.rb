class Pixel < Formula
  desc "Pageking CLI for initializing projects"
  homepage "https://github.com/Pageking/pixel"
  url "https://github.com/Pageking/pixel/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "f0ddc9830dc4f52e28aa4ed3412ab5a3690431bf00620d4f9ed7b6692de30a56"
  version "1.0.2"
  license ""
  head "https://github.com/Pageking/pixel.git"

  depends_on "jq"
  depends_on "gh"
  depends_on "git"

  def install
    bin.install "pixel"
    libexec.install "lib"
    prefix.install "config"
  end

  test do
    system "#{bin}/pixel"
  end
end
