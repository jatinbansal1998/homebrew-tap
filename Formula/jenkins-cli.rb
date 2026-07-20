class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.7.21"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.21/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "a6456ce9a37c7217c5fc2f17a0a46dd9cf9fde26418e35ff3cbf2d7a6f68e958"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.21/jenkins-cli-darwin-x64.tar.gz"
      sha256 "99145c2d11f1227d0b62732fa08af4a58da82ff60f3ff816c26eca0b5047764c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.21/jenkins-cli-linux-arm64.tar.gz"
      sha256 "2e7e4fcc7a6b14b35c3d42e3dc98f742408512f495d787c42c61718c0dd217ac"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.21/jenkins-cli-linux-x64.tar.gz"
      sha256 "b9b3f16a9059eaa1828185a245ccfbe0733d290273a2c5ea51383c4421282d3a"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
