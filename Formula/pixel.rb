class Pixel < Formula
  desc "Pageking CLI for initializing projects"
  homepage "https://github.com/Pageking/pixel"
  url "https://github.com/Pageking/pixel/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "a4c7f47bea5977a654cad5dc90a5ceb328d66956109a48e5b479070f54fa6746"
  version "1.0.0"
  license ""
  head "https://github.com/Pageking/pixel.git"

  depends_on "ssh"
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
