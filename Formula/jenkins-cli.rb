class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.7.20"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.20/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "13843c21541db853e231ec93d9c7170792ba1404b9cad6c7a65c9e0d0b8bdafd"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.20/jenkins-cli-darwin-x64.tar.gz"
      sha256 "8a789f1e0ceb9c8691e88adb5a5131394aa7240e3aa6b1abeb65815bd0ffddd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.20/jenkins-cli-linux-arm64.tar.gz"
      sha256 "c24e7ff5de114b1033f93504a3b7aec2d4b17633426bee950edeefc503e47b44"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.20/jenkins-cli-linux-x64.tar.gz"
      sha256 "65459c0acba4d26868782a2885cd1fb8ec8224132003ab9b18397c3d64425ddf"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
