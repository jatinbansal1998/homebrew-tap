class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.8.2"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.2/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "8c5b62ca9fd4120a788fbfd708b39c8019aa342f6b9ad4a2c30c74674c0562b8"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.2/jenkins-cli-darwin-x64.tar.gz"
      sha256 "9f2b358ba287d56230f1b06719ad23f1da152f40f8ebdf3a1b886d37a5b67356"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.2/jenkins-cli-linux-arm64.tar.gz"
      sha256 "e2006c0c70b1d8300c6179aeb0430b1e802f7c6c32b29e5621b5786174e6cfaf"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.2/jenkins-cli-linux-x64.tar.gz"
      sha256 "34b7a68e703e8c7623d22a2d62fd6c9e1e3584a211e3590953e7093d8d7b3382"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
