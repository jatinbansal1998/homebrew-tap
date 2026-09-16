class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.15/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "3dbce5af9c41c1991243dd4b6a341f9c4e6c6a5211694a5c487189e416449655"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.15/jenkins-cli-darwin-x64.tar.gz"
      sha256 "80b0c9cb2e380ee4fff09ea0e00a4a8ed0c9a4eedbb8d45393acefb9dfbc125b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.15/jenkins-cli-linux-arm64.tar.gz"
      sha256 "71184c7a701db945d9b94d78e9ebd93c5b050227a5fcb35dd936a2cca087b19d"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.15/jenkins-cli-linux-x64.tar.gz"
      sha256 "2c61ab7e4a912fb7e75135087e04ce27149c697f02d3b172f0ec364eb6447056"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
