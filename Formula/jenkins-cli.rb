class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.8.8"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.8/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "99b8a42caf62c9dcb5c4f9155c3d0bc32f71fb24e9ebc4881e79b89a70493118"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.8/jenkins-cli-darwin-x64.tar.gz"
      sha256 "230f82d831f39f1b3ec58ad14045b09822c6e10697ef8551ab600ba0b3cbb69f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.8/jenkins-cli-linux-arm64.tar.gz"
      sha256 "f4076ac12072c4de6b22b13afc7b1491e14af9c89095d23ab3c7b9dcafaf9333"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.8/jenkins-cli-linux-x64.tar.gz"
      sha256 "4842bb42c17cc951b57d0455843d50a38e0756f6ad5f0282f1f51fe95207089d"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
