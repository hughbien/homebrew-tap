class Mark < Formula
  desc "Preview markdown in browser"
  homepage "https://hughbien.com/mark"
  url "https://github.com/hughbien/mark/archive/v0.1.2.tar.gz"
  version "0.1.2"
  sha256 "9708c8b07100684c8134df50a55a492c564f9f4f4a6354d95a62f56a6befc67c"
  head "https://github.com/hughbien/mark.git"

  depends_on "crystal" => [:build, :recommended, "0.36.1"]

  def install
    system "make"
    bin.install "bin/mark"
    ohai "Thanks for using Mark!"
  end
end
