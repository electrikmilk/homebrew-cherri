class CherriApp < Formula
  desc "macOS IDE for the Cherri programming language"
  homepage "https://cherrilang.org/"
  url "https://github.com/electrikmilk/cherri-macos-app/archive/refs/tags/1.1.0.tar.gz"
  sha256 "03163adf4078dbb77ddaf651c0d08e9750ff369f11d233bf00d5e86cee262338"
  license "GPL-2.0-only"

  depends_on xcode: ["15.0", :build]

  def install
    xcodebuild "archive",
           "-scheme", "Cherri",
           "-configuration", "Release",
           "-destination", "platform=macOS,arch=arm64",
           "-archivePath", "build/Cherri.xcarchive",
           "SKIP_INSTALL=NO"

    prefix.install "build/Cherri.xcarchive/Products/Applications/Cherri.app"
  end
end
