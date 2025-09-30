class Cherri < Formula
  desc "Siri Shortcuts programming language"
  homepage "https://cherrilang.org/"
  version "1.2.0"
  license "GPL-2.0-only"

  @@os=""
  @@arch=""

  on_macos do
    @@os="darwin"
    if Hardware::CPU.arm?
      @@arch="arm64"
      sha256 "730c681cd187f8f5cdbfb7c3674bb1e33a52ca24cb0f34e021cfdd97e044d927"
    end

    if Hardware::CPU.intel?
      @@arch="x86_64"
      sha256 "d9ba36f68b8c4507a82543ee8fffbbf3843db8aae5df8750c4b5e56e4f3f7932"
    end
  end

  on_linux do
    @@os="linux"
    if Hardware::CPU.intel?
      @@arch="x86_64"
      sha256 "2969b2a958df2e0eefc10f087599442e1990cbdbad79284ef9d6b61c3d10482c"
    end

    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      @@arch="arm64"
      sha256 "126e6d48cc3aaf16c3fcb841b20c016ee085fa0d3f6816592edc30163cfa58c5"
    end
  end

  url "https://github.com/electrikmilk/cherri/releases/download/v#{version}/cherri_#{@@os}-#{@@arch}.zip"

  def install
    bin.install "cherri"
  end

  test do
    system "#{bin}/cherri", "-v"
  end
end
