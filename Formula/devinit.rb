class Devinit < Formula
  desc "Pageking CLI for initializing projects"
  homepage "https://github.com/Pageking/devinit"
  url "https://github.com/Pageking/devinit.git", branch: "main"
  version "1.0.0"
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
