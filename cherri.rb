class Cherri < Formula
  desc "Siri Shortcuts programming language"
  homepage "https://cherrilang.org/"
  license "GPL-2.0-only"
  url "https://github.com/electrikmilk/cherri"
  head "https://github.com/electrikmilk/cherri.git"

  # depends_on "go" => :build

  def install 
    system "go", "build"
    bin.install "cherri"
  end

  test do
    system "#{bin}/cherri", "-v"
  end
end

