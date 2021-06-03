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

    # If Crystal is shimmed, we need to know its shimmed bin directory. Examples:
    # HOMEBREW_SHIM=$(brew --prefix crystal)/bin
    # HOMEBREW_SHIM=$(asdf which crystal)/../../embedded/bin
    if ENV["HOMEBREW_SHIM"]
      dir = File.expand_path(ENV["HOMEBREW_SHIM"])
      make_args["PATH"] = [ENV["PATH"], dir].join(":") # add shim dir to PATH
      make_args["SHARDS"] = File.join(dir, "shards")
    end

    # For Asdf, you'll need to load the crystal path also:
    # HOMEBREW_CRYSTAL_PATH=`crystal env CRYSTAL_PATH`
    if ENV["HOMEBREW_CRYSTAL_PATH"]
      make_args["CRYSTAL_PATH"] = ENV["HOMEBREW_CRYSTAL_PATH"]
    end

    system "make", *make_args.compact.map { |k,v| "#{k}=#{v}" }
    bin.install "bin/thyme"
    ohai "Thanks for using Thyme! 🍅"
  end
end
