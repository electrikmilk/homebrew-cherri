class Cherri < Formula
  desc "Siri Shortcuts programming language"
  homepage "https://cherrilang.org/"
  version "2.0.0"
  license "GPL-2.0-only"

  # macOS binaries
  on_macos do
    on_arm do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_darwin-arm64.zip"
      sha256 "8416a13dd79ee3008f54d6411a0c56a2c8aaf06e6437f2d59472666f9df385b7"
    end

    on_intel do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_darwin-x86_64.zip"
      sha256 "7cdc1f4d25ef3320b9c1fd0393c15cb549ae0c5c584e058f0156ad695cd43e43"
    end
  end

  # Linux binaries
  on_linux do
    on_arm do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_linux-arm64.zip"
      sha256 "bf084dfa2e551b872d394d43abf6455673896d8f9dd25f4ee5e5c79121f636b5"
    end

    on_intel do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_linux-x86_64.zip"
      sha256 "b457412b832ebf0e45eb19590a41af0df871f8665595f1e838423fd772496bb2"
    end
  end

  def install
    bin.install "cherri"
  end

  test do
    system "#{bin}/cherri", "-v"
  end
end
