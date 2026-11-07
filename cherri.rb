class Cherri < Formula
  desc "Siri Shortcuts programming language"
  homepage "https://cherrilang.org/"
  license "GPL-2.0-only"

  # macOS binaries
  on_macos do
    on_arm do
      url "https://github.com/electrikmilk/cherri/releases/download/v2.4.0/cherri_darwin-arm64.zip"
      sha256 "745f96c60d09406725ad5ef846307fddd3a965c3dcf52b70b552895509a340ec"
    end

    on_intel do
      url "https://github.com/electrikmilk/cherri/releases/download/v2.4.0/cherri_darwin-x86_64.zip"
      sha256 "637bf9ef7e9ad6abc66bc15dd20d4f671db428bddbd8f8fb7e42baa16ebe0873"
    end
  end

  # Linux binaries
  on_linux do
    on_arm do
      url "https://github.com/electrikmilk/cherri/releases/download/v2.4.0/cherri_linux-arm64.zip"
      sha256 "b39f1c1adc38d584be7bf549ede383f899a982b59e5cdd799d50a42067e914ce"
    end

    on_intel do
      url "https://github.com/electrikmilk/cherri/releases/download/v2.4.0/cherri_linux-x86_64.zip"
      sha256 "160c2d71c2a3653a20f0b80a1e7505ee846137ef17e209f511c873e4471b8e44"
    end
  end

  def install
    bin.install "cherri"
  end

  test do
    system "#{bin}/cherri", "-v"
  end
end
