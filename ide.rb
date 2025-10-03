class CherriIDE < Formula
  desc "A macOS IDE for the Cherri programming language."
  homepage "https://cherrilang.org/"
  url "https://github.com/electrikmilk/cherri-macos-app/archive/refs/tags/1.1.0.tar.gz"
  sha256 "d965f60549e8739220c60d34be46febe3d047bd3"
  license "GPL-2.0-only"

  depends_on xcode: ["15.0", :build]

  def install
    # Build the Xcode project, specifying the scheme and configuration
    # Change 'MyApp' to the scheme name of your project
    system "xcodebuild", "archive",
           "-scheme", "Cherri",
           "-configuration", "Release",
           "-destination", "platform=macOS,arch=arm64",
           "-archivePath", "build/Cherri.xcarchive",
           "SKIP_INSTALL=NO"

    # Copy the resulting .app bundle to the correct location
    # Note: This is an example, the exact path may vary based on your Xcode project settings.
    prefix.install "build/Cherri.xcarchive/Products/Applications/Cherri.app"
  end
end
