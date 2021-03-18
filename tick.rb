class Tick < Formula
  desc "Command line stocks"
  homepage "https://hughbien.com/tick"
  url "https://github.com/hughbien/tick/archive/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "5444ac6cbfcd0a2816aed2261ee2b714c44ea5ba6519e7d8cd1ca6078c2dc852"
  head "https://github.com/hughbien/tick.git"

  depends_on "crystal" => [:build, :recommended, "0.36.1"]

  def install
    system "make"
    bin.install "tick"
    ohai "Thanks for using Tick! 🚀🌕"
  end
end
