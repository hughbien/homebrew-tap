class Thyme < Formula
  desc "Pomodoro timer for tmux"
  homepage "https://hughbien.com/thyme"
  url "https://github.com/hughbien/thyme/archive/v0.1.4.tar.gz"
  version "0.1.4"
  sha256 "21b51809684ca50319a9e0b69fdf476c18fa00067a0c1da19b3bfce6dccb52b8"
  head "https://github.com/hughbien/thyme.git"

  depends_on "crystal" => [:build, :recommended, "0.36.1"]

  def install
    system "make"
    bin.install "bin/thyme"
    ohai "Thanks for using Thyme! 🍅"
  end
end
