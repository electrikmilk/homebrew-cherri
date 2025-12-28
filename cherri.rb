class Cherri < Formula
  desc "Siri Shortcuts programming language"
  homepage "https://cherrilang.org/"
  version "2.1.0"
  license "GPL-2.0-only"

  # macOS binaries
  on_macos do
    on_arm do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_darwin-arm64.zip"
      sha256 "78e526134b7efb423bc7e3cd065760fd7ae054dd40a503dd67daefd81e006d07"
    end

    on_intel do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_darwin-x86_64.zip"
      sha256 "74d551b3d5ac45071bdccb8e4aa766e8d505577c7a0e775b65d4be5c25609e89"
    end
  end

  # Linux binaries
  on_linux do
    on_arm do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_linux-arm64.zip"
      sha256 "839d27deb6385f973f7ffd6cb9000a39c70f0199390c71183b2bfd908463ba2e"
    end

    on_intel do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_linux-x86_64.zip"
      sha256 "7ddfbdfff950b56cbc7c6c5433d27ee8581737226ff1dbfa5f7d8c21297d012e"
    end
  end

  def install
    bin.install "cherri"
  end

  test do
    system "#{bin}/cherri", "-v"
  end
end
