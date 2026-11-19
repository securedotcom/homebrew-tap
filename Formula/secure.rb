# Rendered by packaging/render-formula.sh at release time into securedotcom/homebrew-tap Formula/secure.rb
class Secure < Formula
  desc "Secure.com command line: CVE, software and weakness answers from public data, no account"
  homepage "https://secure.com"
  version "0.1.0-beta.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.0-beta.1/secure-darwin-arm64.tar.gz"
      sha256 "b46472c189ac010e4615737b9a5d6b94ea4df0b1e224367b42e8f5b4c6fcc38e"
    end
    on_intel do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.0-beta.1/secure-darwin-x64.tar.gz"
      sha256 "ea9d4b67b1dfda5c7c94dbb2b70b6a471d95bceedcd37d6465bd6fe2d2d2b5e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.0-beta.1/secure-linux-arm64.tar.gz"
      sha256 "07f5713cd32f333fa7211ff4f239da8952c83fcb13fc59a3b7e1dbbce773a156"
    end
    on_intel do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.0-beta.1/secure-linux-x64.tar.gz"
      sha256 "223eae2cd7791c6f2a808788eadc5a02dd84e3dd263b0383abe87319f7351f1e"
    end
  end

  def install
    bin.install "secure"
  end

  test do
    assert_match "secure", shell_output("#{bin}/secure --help")
  end
end
