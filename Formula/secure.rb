# Rendered by packaging/render-formula.sh at release time into securedotcom/homebrew-tap Formula/secure.rb
class Secure < Formula
  desc "Secure.com command line: CVE, software and weakness answers from public data, no account"
  homepage "https://secure.com"
  version "0.1.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.2/secure-darwin-arm64.tar.gz"
      sha256 "c73ad107519a48e5c812187c29ee55fa858a0adca64b388ac8b07a063bc4ab77"
    end
    on_intel do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.2/secure-darwin-x64.tar.gz"
      sha256 "47126401e772947b3d358a9059ed4eae57e11b249948642ca313aa31b37c31db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.2/secure-linux-arm64.tar.gz"
      sha256 "9ac638579c275d4e23595651bd37c570a06177cc5b48807bc29b6c61d6fd85a8"
    end
    on_intel do
      url "https://github.com/securedotcom/homebrew-tap/releases/download/v0.1.2/secure-linux-x64.tar.gz"
      sha256 "63ebcabc8d9edf0f4506e3683698eef1002552031930cbff100677ff870125ff"
    end
  end

  def install
    bin.install "secure"
  end

  test do
    assert_match "secure", shell_output("#{bin}/secure --help")
  end
end
