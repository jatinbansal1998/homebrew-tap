class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.7.19"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.19/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "50fe95143be9591889301445d21854a00716e370e2d63468b92e3764640c5b04"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.19/jenkins-cli-darwin-x64.tar.gz"
      sha256 "26039e30656408e81ce3dbd8607ee8245ae4749a7a4c0b9cb77c689a0de81ab6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.19/jenkins-cli-linux-arm64.tar.gz"
      sha256 "50f873e47c9aa9672007212190c601ef3899e61b28a76ef2a074e3075e140baf"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.19/jenkins-cli-linux-x64.tar.gz"
      sha256 "43c54c8926e38919f1262a9596f167cf97b0c2ab91ff214e16ef29a8d2a626e3"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
