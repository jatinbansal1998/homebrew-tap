class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.7.13"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.13/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "d3dbcd88dd604a15abc358ac0a20ba9efacabec722d2f397c4bcf0957db37e9e"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.13/jenkins-cli-darwin-x64.tar.gz"
      sha256 "d98a27541bb7f641fd089d8e8687de80178dae164aee0f91ac3e6d92940b3517"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.13/jenkins-cli-linux-arm64.tar.gz"
      sha256 "830c6e169454f4792d2c299637e3d4fb2d925bd24bab3b52675448bce1753e1d"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.13/jenkins-cli-linux-x64.tar.gz"
      sha256 "71a8b0d8c4c7743304fa9a334ab837887d89b99737111d5a211b50472ca3ef44"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
