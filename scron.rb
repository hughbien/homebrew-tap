class Scron < Formula
  desc "Scheduler for laptops"
  homepage "https://hughbien.com/scron"
  url "https://github.com/hughbien/scron/archive/v0.1.2.tar.gz"
  version "0.1.2"
  sha256 "99602343b432488b6e382192054f3445694de1bcb4b317ebfcb177d24435c611"
  head "https://github.com/hughbien/scron.git"

  depends_on "crystal" => [:build, :recommended, "0.36.1"]

  def install
    system "make"
    bin.install "bin/scron"
    ohai "Thanks for using Scron!"
  end
end
