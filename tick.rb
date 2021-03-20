class Tick < Formula
  desc "Command line stocks"
  homepage "https://hughbien.com/tick"
  url "https://github.com/hughbien/tick/archive/v0.1.2.tar.gz"
  version "0.1.2"
  sha256 "30f2468e5ff0d5db7b70327db2982383085818b03aec343db832b45cd2232db8"
  head "https://github.com/hughbien/tick.git"

  depends_on "crystal" => [:build, :recommended, "0.36.1"]

  def install
    system "make"
    bin.install "tick"
    ohai "Thanks for using Tick! 🚀🌕"
  end
end
