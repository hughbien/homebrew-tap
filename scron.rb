class Scron < Formula
  desc "Scheduler for laptops"
  homepage "https://hughbien.com/scron"
  url "https://github.com/hughbien/scron/archive/v0.1.1.tar.gz"
  version "0.1.1"
  sha256 "34568403574994e19753c16d978c1a30a0f74236b60d7fd4791afe504449e161"
  head "https://github.com/hughbien/scron.git"

  depends_on "crystal" => [:build, :recommended, "0.36.1"]

  def install
    system "make"
    bin.install "bin/scron"
    ohai "Thanks for using Scron!"
  end
end
