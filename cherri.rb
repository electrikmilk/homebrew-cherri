class Cherri < Formula
  desc "Siri Shortcuts programming language"
  homepage "https://cherrilang.org/"
  version "2.3.0"
  license "GPL-2.0-only"

  # macOS binaries
  on_macos do
    on_arm do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_darwin-arm64.zip"
      sha256 "15e4651d4c957a03cdfeb6c5fd74ea8ac66f1d6e20897883fef3547fdd36d264"
    end

    on_intel do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_darwin-x86_64.zip"
      sha256 "a9555b8e93e5e374a0dacd0df66d3b952493539eddc0bcccaf8030ecf1d96b82"
    end
  end

  # Linux binaries
  on_linux do
    on_arm do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_linux-arm64.zip"
      sha256 "05f81502a73fc25b913f9548500e121f39d2bd4ccccd46c56c0453b37f28cc48"
    end

    on_intel do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_linux-x86_64.zip"
      sha256 "7ab2c384b7b26e7c72a30a8dfa56f89dae12c4068b7951bc1e3193f3698edbe9"
    end
  end

  def install
    bin.install "cherri"
  end

  test do
    system "#{bin}/cherri", "-v"
  end
end
