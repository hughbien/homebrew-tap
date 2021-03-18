class Vox < Formula
  desc "Static site generator"
  homepage "https://hughbien.com/vox"
  url "https://github.com/hughbien/vox/archive/v0.1.1.tar.gz"
  version "0.1.1"
  sha256 "121c2a829e7cd71acd66c429a6da1ef0c0b4bf2f3d001386f579bb1577c08e91"
  head "https://github.com/hughbien/vox.git"

  depends_on "crystal" => [:build, :recommended, "0.36.1"]

  def install
    system "make"
    bin.install "bin/vox"
    ohai "Thanks for using Vox!"
  end
end
