class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.8.7"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.7/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "15752c01da7234589b6ff5ca790465f47f3a2ddfe317b50347aa42d1cad88a98"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.7/jenkins-cli-darwin-x64.tar.gz"
      sha256 "8f031c74d7dc9d2d3bd2b8361c5c571a6fe09aa6537dd27373c7518cec7c3320"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.7/jenkins-cli-linux-arm64.tar.gz"
      sha256 "e1f4861e161a9771c99617151fb42c643581b097b68c8abe22e1d2d687dbf1a2"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.7/jenkins-cli-linux-x64.tar.gz"
      sha256 "61a6e9862e5b73d530b88c366e05c5a6ad1380f26e13880dac14d2dd2e7592ab"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
