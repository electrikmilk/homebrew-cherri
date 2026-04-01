class Cherri < Formula
  desc "Siri Shortcuts programming language"
  homepage "https://cherrilang.org/"
  version "2.1.1"
  license "GPL-2.0-only"

  # macOS binaries
  on_macos do
    on_arm do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_darwin-arm64.zip"
      sha256 "3ee3325d84ec9c4c1ebb240a736cf113d3261078ad76aa81f45c36b721ef6c04"
    end

    on_intel do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_darwin-x86_64.zip"
      sha256 "6e1042865f049d602983a3cecac6e41e06937e0e8614f81e0768729a84515644"
    end
  end

  # Linux binaries
  on_linux do
    on_arm do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_linux-arm64.zip"
      sha256 "32694a9159d98e44c2ddf76ff6dd0a7c8dcbb1fcf6ea146b45a6387684c17eb5"
    end

    on_intel do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_linux-x86_64.zip"
      sha256 "a18548235bca623eba3fc6eea9b36f97c8f208bc6e83427e785749b3cd7ac321"
    end
  end

  def install
    bin.install "cherri"
  end

  test do
    system "#{bin}/cherri", "-v"
  end
end
