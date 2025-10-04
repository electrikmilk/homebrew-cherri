class CherriApp < Formula
  desc "macOS IDE for the Cherri programming language"
  homepage "https://cherrilang.org/"
  version "1.1.0"
  url "https://github.com/electrikmilk/cherri-macos-app/archive/refs/tags/1.1.0.tar.gz"
  sha256 "22a0fe9f18b01f6bfe8754616cb362c479f7ad488a3dfcbe35c975ad4ea39d8a"
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
