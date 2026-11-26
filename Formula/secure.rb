# Rendered by packaging/render-formula.sh at release time into securedotcom/homebrew-tap Formula/secure.rb
class Secure < Formula
  desc "Secure.com command line: CVE, software and weakness answers from public data, no account"
  homepage "https://secure.com"
  version "0.1.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.1/secure-darwin-arm64.tar.gz"
      sha256 "bf0f8d476bc7c16e141fcacc6f298730174b53b900f006f82e10b73af3fa89a3"
    end
    on_intel do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.1/secure-darwin-x64.tar.gz"
      sha256 "58e51b259fd3a186e1779ac37eb6b2284d49cefd80568bf495a58a9bc07135da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.1/secure-linux-arm64.tar.gz"
      sha256 "3673e60f4cb9b3484641af50b98ad9318c38010cab97a66d5871fb7f4fc4a3b0"
    end
    on_intel do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.1/secure-linux-x64.tar.gz"
      sha256 "0267bff130da7b2f4806b4e405a147affa68ca0cf7db35d3b77bb6640f4181bd"
    end
  end

  def install
    bin.install "secure"
  end

  test do
    assert_match "secure", shell_output("#{bin}/secure --help")
  end
end
