# Rendered by packaging/render-formula.sh at release time into securedotcom/homebrew-tap Formula/secure.rb
class Secure < Formula
  desc "Secure.com command line: CVE, software and weakness answers from public data, no account"
  homepage "https://secure.com"
  version "0.1.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.5/secure-darwin-arm64.tar.gz"
      sha256 "b8a8672cfb4ce8aca9f84be67e1f085d228ae2a5c2a055235c6822aa84fa1c91"
    end
    on_intel do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.5/secure-darwin-x64.tar.gz"
      sha256 "efddd4ff88d7466349e8e2b49a4f93a2967488638c98b648803737ba499b5ada"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.5/secure-linux-arm64.tar.gz"
      sha256 "0ac9494e17004d15341e07b5485f3ae7f0df8f98323f21da0d805709cc1d7801"
    end
    on_intel do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.5/secure-linux-x64.tar.gz"
      sha256 "ff284fcd8f366341e231b7821d9a0ae68073a4f3f3b91cfc8caa34a026f446ee"
    end
  end

  def install
    bin.install "secure"
  end

  test do
    assert_match "secure", shell_output("#{bin}/secure --help")
  end
end
