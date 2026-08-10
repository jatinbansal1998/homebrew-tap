class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.8.11"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.11/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "8c91b289195bac48004f79650f0c58e69eaafa0f278e3086fefbad7302dcf080"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.11/jenkins-cli-darwin-x64.tar.gz"
      sha256 "76b501c9736d71fb0820877b2c753d628914f8f87ae6097283194f10ac473bdb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.11/jenkins-cli-linux-arm64.tar.gz"
      sha256 "9338a27da6b8fc8db6e9ecbba1c602887d6f8476cf85d96378688e067337908e"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.11/jenkins-cli-linux-x64.tar.gz"
      sha256 "74c61c0addb352685027f38a6dd296b10f98902d3ef2189aa08ff505e671199e"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
