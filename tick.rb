class Tick < Formula
  desc "Command line stocks"
  homepage "https://hughbien.com/tick"
  url "https://github.com/hughbien/tick/archive/v0.1.1.tar.gz"
  version "0.1.1"
  sha256 "8f5c006de0bce96861ceeda4e32872beaed0293d4cd08c63f746eafe0db5e13e"
  head "https://github.com/hughbien/tick.git"

  depends_on "crystal" => [:build, :recommended, "0.36.1"]

  def install
    system "make"
    bin.install "tick"
    ohai "Thanks for using Tick! 🚀🌕"
  end
end
