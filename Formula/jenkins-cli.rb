class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.7.25"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.25/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "b957a65f0aeae197a3b7ceea27f8d3397b76304e70efc6db53aa33fb3b458f0b"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.25/jenkins-cli-darwin-x64.tar.gz"
      sha256 "3939d3032747225364717255c86fb197b8bb3059d3928179a3b18831cc9baf60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.25/jenkins-cli-linux-arm64.tar.gz"
      sha256 "72eaf1db6202d9ed972a91cb4f00c4950269c557dff19fb0f1457872dfab95e1"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.25/jenkins-cli-linux-x64.tar.gz"
      sha256 "d4fa9f6a008382c5ed4214eb12b7e402affffc8cedb1d8a71041b01eaff75d1f"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
