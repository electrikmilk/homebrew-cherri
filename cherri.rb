class Cherri < Formula
  desc "Siri Shortcuts programming language"
  homepage "https://cherrilang.org/"
  version "1.2.0"
  license "GPL-2.0-only"

  # macOS binaries
  on_macos do
    on_arm do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_darwin-arm64.zip"
      sha256 "730c681cd187f8f5cdbfb7c3674bb1e33a52ca24cb0f34e021cfdd97e044d927"
    end

    on_intel do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_darwin-x86_64.zip"
      sha256 "d9ba36f68b8c4507a82543ee8fffbbf3843db8aae5df8750c4b5e56e4f3f7932"
    end
  end

  # Linux binaries
  on_linux do
    on_arm do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_linux-arm64.zip"
      sha256 "126e6d48cc3aaf16c3fcb841b20c016ee085fa0d3f6816592edc30163cfa58c5"
    end

    on_intel do
      url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_linux-x86_64.zip"
      sha256 "2969b2a958df2e0eefc10f087599442e1990cbdbad79284ef9d6b61c3d10482c"
    end
  end

  def install
    bin.install "cherri"
  end

  test do
    system "#{bin}/cherri", "-v"
  end
end
