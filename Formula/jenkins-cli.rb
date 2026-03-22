class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.7.15"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.15/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "c3db1a509591fbfcdfd36cc6d8c1ae3e0ec0c2dd3f24ead5b29d9ca78589b386"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.15/jenkins-cli-darwin-x64.tar.gz"
      sha256 "564f2e6d6c42b4b647d49d219ddd41f58ea3b6d8fb11fc8eeba3a692370af85b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.15/jenkins-cli-linux-arm64.tar.gz"
      sha256 "1fd45da55db7ef7e9ecc5b09541e07ccb43964fa078240909a0b43a3ce26ed45"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.15/jenkins-cli-linux-x64.tar.gz"
      sha256 "ab98908a086bef13951a6be7988973c8ac53d7c7bd92b082e2f708ee21f7007c"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
