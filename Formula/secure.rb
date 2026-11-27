# Rendered by packaging/render-formula.sh at release time into securedotcom/homebrew-tap Formula/secure.rb
class Secure < Formula
  desc "Secure.com command line: CVE, software and weakness answers from public data, no account"
  homepage "https://secure.com"
  version "0.1.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.6/secure-darwin-arm64.tar.gz"
      sha256 "073386e1650c253c3fd0fee80cbb163a5dee7e038464b9932b857eb6d5590c8d"
    end
    on_intel do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.6/secure-darwin-x64.tar.gz"
      sha256 "b8d13648de791e3c0814cd4811cf7438e70efbecf3324e37f63483af8afa81a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.6/secure-linux-arm64.tar.gz"
      sha256 "96b0cd5e856b2d15e3d54824378b9e8992a08e1c647b4d1921b53136fc611cc8"
    end
    on_intel do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.6/secure-linux-x64.tar.gz"
      sha256 "d56d6360f4991dc6a9d2d706b3e13f41ac1c0d06fef6ee0a414adb6e48ac6796"
    end
  end

  def install
    bin.install "secure"
  end

  test do
    assert_match "secure", shell_output("#{bin}/secure --help")
  end
end
