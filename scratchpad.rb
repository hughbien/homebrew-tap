class Scratchpad < Formula
  desc "Generic scratchpad for writing and evaluating scripts"
  homepage "https://hughbien.com/scratchpad"
  url "https://github.com/hughbien/scratchpad/archive/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "1a54a07c1bd73d243862a2af14cc0ee15f4e67aae05de9f42fbe70acc96c2518"
  head "https://github.com/hughbien/scratchpad.git"

  depends_on "crystal" => [:build, :recommended, "0.36.1"]

  def install
    system "make"
    bin.install "bin/scratchpad"
    ohai "Thanks for using Scratchpad!"
  end
end
