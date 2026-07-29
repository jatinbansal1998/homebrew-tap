class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.8.6"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.6/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "aecd92bf85dd0e2825a5e9bed4e60fbdb67158d0626a9fdfed38b387acdaf8af"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.6/jenkins-cli-darwin-x64.tar.gz"
      sha256 "cae1b2c27c3111e7507d6ae59275c6e351a9fe34f75bdc8abda9c5346e8d73f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.6/jenkins-cli-linux-arm64.tar.gz"
      sha256 "c2f21d186b03fcf9cd9564b2fa6540fd355c4f6942bcdec62e7c7ef41a09b481"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.6/jenkins-cli-linux-x64.tar.gz"
      sha256 "512c2316db4884af2bd0655b45544eca6e32f42e3c95cf20c981adbe6aa93d34"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
