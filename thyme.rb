class Thyme < Formula
  desc "Pomodoro timer for tmux"
  homepage "https://hughbien.com/thyme"
  url "https://github.com/hughbien/thyme/archive/v0.1.6.tar.gz"
  version "0.1.6"
  sha256 "684e679ba84177337fde2ae5c0db6d4555fb1d55dfde52b1b8343efcba75a261"
  head "https://github.com/hughbien/thyme.git"

  depends_on "crystal" => [:build, :recommended, "1.0.0"]

  def install
    system(ENV["HOMEBREW_RESHIM"]) unless ENV["HOMEBREW_RESHIM"].to_s.empty?
    system "make"
    bin.install "bin/thyme"
    ohai "Thanks for using Thyme! 🍅"
  end
end
