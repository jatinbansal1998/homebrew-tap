class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.7.24"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.24/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "95f08af147a6f87c92ddd0febd48eea285ab14eb7feb90d6650cc031f38042ad"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.24/jenkins-cli-darwin-x64.tar.gz"
      sha256 "9dbddf170ba3fd5b8ea04168c5c57ae76a3653f887b0f5e129fe5cdd4cb08bdf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.24/jenkins-cli-linux-arm64.tar.gz"
      sha256 "c67f6ac73992a6052b6795b704dde12c16a23e2c87097e6ae70dfbffba3239fd"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.24/jenkins-cli-linux-x64.tar.gz"
      sha256 "643d2fd74e21467205a5be6f1c1d9bb39cfb20a631b8fc6085997dc58d47bdfb"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
