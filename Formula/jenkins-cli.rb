class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.7.14"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.14/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "d5ac8f5484f615f36494b42ad8cf23a656d62e4decc3ba9bf99a8cfe7819fa6b"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.14/jenkins-cli-darwin-x64.tar.gz"
      sha256 "23f83df484eb99ff34c13cc80b698ab96c3a17e3dc7851e5d6750503e2758bcb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.14/jenkins-cli-linux-arm64.tar.gz"
      sha256 "3e6aa87fc5752cad3291b90439df082b758d3ea0d5226cc3cb14f70322107a50"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.14/jenkins-cli-linux-x64.tar.gz"
      sha256 "0fabe41a80c94542605db183ac6bcac6fb4797d20cdde7e23d990ccb6433b3e0"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
