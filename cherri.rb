class Cherri < Formula
  desc "Siri Shortcuts programming language"
  homepage "https://cherrilang.org/"
  version "1.3.1"
  license "GPL-2.0-only"

  # macOS binaries
  on_macos do
    on_arm do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_darwin-arm64.zip"
      sha256 "adf61502a8f44e23f6a8c409d550e76fef17960058c88048c3c9b1cdccbc20e2"
    end

    on_intel do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_darwin-x86_64.zip"
      sha256 "199e9efb8867cfabe63f796a17ae08f5d7a28b092672fa0294e892f10f4d8d36"
    end
  end

  # Linux binaries
  on_linux do
    on_arm do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_linux-arm64.zip"
      sha256 "1de676ef839724dec591b1cbcaf75546a3561bbbb824921e4fffe83371d55fe4"
    end

    on_intel do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_linux-x86_64.zip"
      sha256 "39add330f90bfd533395825114e045d94b7a1f14c508411b201eb41d8071077b"
    end
  end

  def install
    bin.install "cherri"
  end

  test do
    system "#{bin}/cherri", "-v"
  end
end
