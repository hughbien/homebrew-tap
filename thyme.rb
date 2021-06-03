class Thyme < Formula
  desc "Pomodoro timer for tmux"
  homepage "https://hughbien.com/thyme"
  url "https://github.com/hughbien/thyme/archive/v0.1.5.tar.gz"
  version "0.1.5"
  sha256 "124b5cbb0ced9dda4f96bfa312b1d6945933310ebf81d36afbaa2727f5d0ee02"
  head "https://github.com/hughbien/thyme.git"

  depends_on "crystal" => [:build, :recommended, "1.0.0"]

  def install
    make_args = {
      "SHARDS" => ENV["HOMEBREW_SHARDS"]
    }
    system "make", *make_args.compact.map { |k,v| "#{k}=#{v}" }
    bin.install "bin/thyme"
    ohai "Thanks for using Thyme! 🍅"
  end
end
