class Mark < Formula
  desc "Preview markdown in browser"
  homepage "https://hughbien.com/mark"
  url "https://github.com/hughbien/mark/archive/v0.1.2.tar.gz"
  version "0.1.2"
  sha256 "0d9aabf1b8df6a69cab11419876f51ba50052653a72fd3ea838b2bf677a1d02a"
  head "https://github.com/hughbien/mark.git"

  depends_on "crystal" => [:build, :recommended, "0.36.1"]

  def install
    system "make"
    bin.install "bin/mark"
    ohai "Thanks for using Mark!"
  end
end
