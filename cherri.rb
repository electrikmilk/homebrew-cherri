class Cherri < Formula
  desc "Siri Shortcuts programming language"
  homepage "https://cherrilang.org/"
  version "2.2.0"
  license "GPL-2.0-only"

  # macOS binaries
  on_macos do
    on_arm do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_darwin-arm64.zip"
      sha256 "c2678da7a36c53dbe70e6e7a2e87546623976e32e50cb0ced5c7467e978f6765"
    end

    on_intel do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_darwin-x86_64.zip"
      sha256 "27801e4c1c2cbab1e5041f70d33006ba1520d985a01f9a24e672d0f936d6ac15"
    end
  end

  # Linux binaries
  on_linux do
    on_arm do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_linux-arm64.zip"
      sha256 "8f03df0b64e2ad435bf6310400d87033e4fa1c52916c35df2547ef62508889e1"
    end

    on_intel do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_linux-x86_64.zip"
      sha256 "005b43c588c89b67ed42862b10c763df7a24985d06a86b4dc6424ab6f43993e2"
    end
  end

  def install
    bin.install "cherri"
  end

  test do
    system "#{bin}/cherri", "-v"
  end
end
