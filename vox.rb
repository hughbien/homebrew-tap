class Vox < Formula
  desc "Static site generator"
  homepage "https://hughbien.com/vox"
  url "https://github.com/hughbien/vox/archive/v0.1.2.tar.gz"
  version "0.1.2"
  sha256 "ce7ed420779e418a3565d6c285ce3cc249a9e13086bd0d1762f780db857fcc11"
  head "https://github.com/hughbien/vox.git"

  depends_on "crystal" => [:build, :recommended, "0.36.1"]

  def install
    system "make"
    bin.install "bin/vox"
    ohai "Thanks for using Vox!"
  end
end
