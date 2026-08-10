class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.8.10"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.10/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "8fd9e8cf279929f5ceb07e073ab547fc402044a2ce7c5ebebcb10c3f20ef18c9"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.10/jenkins-cli-darwin-x64.tar.gz"
      sha256 "3484da5f650af3fc9b9aeb1a095d8edb72ec9cffa10bec7e4ac9fb94fecb9a52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.10/jenkins-cli-linux-arm64.tar.gz"
      sha256 "4b7f92d94c3d30119721828fae3c854ebbe4d1d41582da767a5caac89b8f783a"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.10/jenkins-cli-linux-x64.tar.gz"
      sha256 "17b7bdb1cae2a5035c1cc235b1c8d739132919afaf1254de824cd5db137acca2"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
