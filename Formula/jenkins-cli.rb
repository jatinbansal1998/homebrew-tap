class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.7.23"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.23/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "8a2d98c7df6a8e3935c5c94aca12e0313028f870d10fa34afbaf25f62d9432dc"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.23/jenkins-cli-darwin-x64.tar.gz"
      sha256 "04398f20deb69b35419b51e251493693d44c70992ca1049d0b108bbaea7a1dff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.23/jenkins-cli-linux-arm64.tar.gz"
      sha256 "6dcc61c5b9b644b7ee2a57138facb4fcd8c4f9e0b0e05fcfb47b7a3625e9a414"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.23/jenkins-cli-linux-x64.tar.gz"
      sha256 "4a1809e217cc70d89743cfdf0928b3a3b3b0d9da0ac9af25f0ccbd1340c9ba54"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
