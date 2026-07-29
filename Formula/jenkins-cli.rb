class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.8.5"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.5/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "3679eb153245226f5fa3182881672c0e3b27a0bcb0cfec257b1c2d05e871eaab"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.5/jenkins-cli-darwin-x64.tar.gz"
      sha256 "c190614a0f67a6545abab2aa24babe22293c879e964f2d68199754de1fa38106"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.5/jenkins-cli-linux-arm64.tar.gz"
      sha256 "12c278d41e491461fcc9fb4454d43a532325f8b987f3cb582e65ce96049f5e0c"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.5/jenkins-cli-linux-x64.tar.gz"
      sha256 "9f5bc51dc3c6ffc0f2819de61a7542f8e5f556304293038ee68ed183c5ae76c4"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
