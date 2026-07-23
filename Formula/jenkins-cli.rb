class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.0/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "aea5e56644683d95b27e1781ba79eb2fd5d408f1e4f069ae9d28790b1a7f94ec"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.0/jenkins-cli-darwin-x64.tar.gz"
      sha256 "c473aef27f57a0b050d00c330022d2495dbd3fc54aaa7c06feb9326a7e612aaa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.0/jenkins-cli-linux-arm64.tar.gz"
      sha256 "432a672f7c198a22fa98d571e8cdb455f46382d473b1ded8ca2a6bd16880bac5"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.0/jenkins-cli-linux-x64.tar.gz"
      sha256 "817727a8843d0e40543c772b254349da026977faa3100b80f9efa4a7ab4ab393"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
