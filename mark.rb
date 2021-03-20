class Mark < Formula
  desc "Preview markdown in browser"
  homepage "https://hughbien.com/mark"
  url "https://github.com/hughbien/mark/archive/v0.1.3.tar.gz"
  version "0.1.3"
  sha256 "2d215de7893460be46223f2fbee8e8eeccb9134f49204bb85e6d8ec839a4dd72"
  head "https://github.com/hughbien/mark.git"

  depends_on "crystal" => [:build, :recommended, "0.36.1"]

  def install
    system "make"
    bin.install "bin/mark"
    ohai "Thanks for using Mark!"
  end
end
