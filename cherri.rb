class Cherri < Formula
  desc "Siri Shortcuts programming language"
  homepage "https://cherrilang.org/"
  version "1.3.2"
  license "GPL-2.0-only"

  # macOS binaries
  on_macos do
    on_arm do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_darwin-arm64.zip"
      sha256 "eee58f74572da97a8ad8ee440f6afc14dc04573c5f53f0f6ed7bca748c41a99a"
    end

    on_intel do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_darwin-x86_64.zip"
      sha256 "3c733c9ae7613dfeeac1983ab91d528f9ca43e62e89e79cde07ae61be9369d9b"
    end
  end

  # Linux binaries
  on_linux do
    on_arm do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_linux-arm64.zip"
      sha256 "968c2141570aa06ea21e842ba64985d24110e4fa0dfc3e676dff2c0fa5ba9007"
    end

    on_intel do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_linux-x86_64.zip"
      sha256 "aefc4367c6b1ddef8a718187dc3118c3247045d02ea809342a9cfd915d5f6e3f"
    end
  end

  def install
    bin.install "cherri"
  end

  test do
    system "#{bin}/cherri", "-v"
  end
end
