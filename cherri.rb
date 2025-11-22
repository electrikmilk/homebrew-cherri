class Cherri < Formula
  desc "Siri Shortcuts programming language"
  homepage "https://cherrilang.org/"
  version "2.0.0"
  license "GPL-2.0-only"

  # macOS binaries
  on_macos do
    on_arm do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_darwin-arm64.zip"
      sha256 "0d77ae39ddfff37abd96dd9e5db63851b2669a95f04cc7d913146c4a7336dd10"
    end

    on_intel do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_darwin-x86_64.zip"
      sha256 "39c2073806dbcb1b5e8f431de1494f4ed9b2cd802c3d12a77b1d15a4017d66e3"
    end
  end

  # Linux binaries
  on_linux do
    on_arm do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_linux-arm64.zip"
      sha256 "3c3da73bc56a28d31feec3986e0893bded2cf6674b6bf332b80e19bfaf7d5da8"
    end

    on_intel do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_linux-x86_64.zip"
      sha256 "fd3b44d798bd937719e7c17895a2be2ef8d6893b2e6d21da8908077bdd9a6c9c"
    end
  end

  def install
    bin.install "cherri"
  end

  test do
    system "#{bin}/cherri", "-v"
  end
end
