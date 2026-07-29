class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.8.4"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.4/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "b02a74be88e534c310c8304b59332300251aa02f69c71beaa34147c4b033c029"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.4/jenkins-cli-darwin-x64.tar.gz"
      sha256 "54819690b2cd13223b675721f68138b6560ec58a547385fb418ee03f71f8fb65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.4/jenkins-cli-linux-arm64.tar.gz"
      sha256 "ace5461ce1beaeb6c19379f9e16734c2792f0672374430f180fa1ab8c5c84b5b"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.4/jenkins-cli-linux-x64.tar.gz"
      sha256 "0abaffd9e7f5ecf600f159a8f5e6a1c97067fcb81b3c21a6b72ce931caaeb300"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
