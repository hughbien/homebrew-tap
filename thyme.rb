class Thyme < Formula
  desc "Pomodoro timer for tmux"
  homepage "https://hughbien.com/thyme"
  url "https://github.com/hughbien/thyme/archive/v0.1.3.tar.gz"
  version "0.1.3"
  sha256 "c525f840edb32308c88c6c7e0d04ce583f6b8ded81ff7e1c47e77e3cbe34a5a8"
  head "https://github.com/hughbien/thyme.git"

  depends_on "crystal" => [:build, :recommended, "0.36.1"]

  def install
    system "make"
    bin.install "bin/thyme"
    ohai "Thanks for using Thyme! 🍅"
  end
end
