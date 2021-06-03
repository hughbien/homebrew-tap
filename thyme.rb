class Thyme < Formula
  desc "Pomodoro timer for tmux"
  homepage "https://hughbien.com/thyme"
  url "https://github.com/hughbien/thyme/archive/v0.1.6.tar.gz"
  version "0.1.6"
  sha256 "684e679ba84177337fde2ae5c0db6d4555fb1d55dfde52b1b8343efcba75a261"
  head "https://github.com/hughbien/thyme.git"

  depends_on "crystal" => [:build, :recommended, "1.0.0"]

  def install
    make_args = {}
    if ENV["HOMEBREW_SHIM"] # eg HOMEBREW_SHIM=`asdf which crystal`
      dir = File.dirname(ENV["HOMEBREW_SHIM"])
      make_args["PATH"] = [ENV["PATH"], dir].join(":") # add shim dir to PATH
    end
    system "make", *make_args.compact.map { |k,v| "#{k}=#{v}" }
    bin.install "bin/thyme"
    ohai "Thanks for using Thyme! 🍅"
  end
end
