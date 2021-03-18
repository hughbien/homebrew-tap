class Scron < Formula
  desc "Scheduler for laptops"
  homepage "https://hughbien.com/scron"
  url "https://github.com/hughbien/scron/archive/v0.1.1.tar.gz"
  version "0.1.1"
  sha256 "d7f0489e3b71ee9275f8be1e45aa4f0cef7aee193bafa2dff725c09bdff825c8"
  head "https://github.com/hughbien/scron.git"

  depends_on "crystal" => [:build, :recommended, "0.36.1"]

  def install
    system "make"
    bin.install "bin/scron"
    ohai "Thanks for using Scron!"
  end
end
