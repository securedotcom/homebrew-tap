# Rendered by packaging/render-formula.sh at release time into securedotcom/homebrew-tap Formula/secure.rb
class Secure < Formula
  desc "Secure.com command line: CVE, software and weakness answers from public data, no account"
  homepage "https://secure.com"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.0/secure-darwin-arm64.tar.gz"
      sha256 "9fe113b3bb18f59450117576b535782f609a604bef446ad1e9f46990a7687dad"
    end
    on_intel do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.0/secure-darwin-x64.tar.gz"
      sha256 "1c67681d3a420f70307a0a0ec9edc78e6a915ae5d77f422b75d11c383e91d411"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.0/secure-linux-arm64.tar.gz"
      sha256 "fbb816dbb7e49f47099ced272fe623715d8a48a70b9e858407ef182090f40fcc"
    end
    on_intel do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.0/secure-linux-x64.tar.gz"
      sha256 "d9676cd802e9a6d699ab1a0eadea93317c8f7f947087cb311f5baeeeb44ee3f6"
    end
  end

  def install
    bin.install "secure"
  end

  test do
    assert_match "secure", shell_output("#{bin}/secure --help")
  end
end
