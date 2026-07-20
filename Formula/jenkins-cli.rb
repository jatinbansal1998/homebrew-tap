class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.7.22"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.22/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "1da038fd69e752fb1871d38b66eb8e2e90f482d6583824c74198c07a35ce1a55"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.22/jenkins-cli-darwin-x64.tar.gz"
      sha256 "f792d7cea92e8ae01d9f9e631de99cb32d9fb49e4a8f15cac35043f7d8c19a57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.22/jenkins-cli-linux-arm64.tar.gz"
      sha256 "92ee3b1c699a1fa99a1a81cda9f3a6d62bf5afb374819fe71510601e400f5389"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.22/jenkins-cli-linux-x64.tar.gz"
      sha256 "54f1101504c59974e03ed807db5e15501d9fd19d32c34b3a65e8448fb39027d6"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
