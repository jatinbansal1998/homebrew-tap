class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.7.26"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.26/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "a2c04b92beeabc7b4dc9f9d20d0c0e8e530f07d6cfce8fbf20d6166eb46dcf21"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.26/jenkins-cli-darwin-x64.tar.gz"
      sha256 "5d3485d939fde2f3b4ffbf91992746276a685e6a510cf491ad7a64f593309485"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.26/jenkins-cli-linux-arm64.tar.gz"
      sha256 "99cd372560977c75c7d1c5d5134e0cb331d403b118f1337ef7c680bb7cdf07b5"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.26/jenkins-cli-linux-x64.tar.gz"
      sha256 "37fe79bd320bc8754b047cb7b43bf7a67f356836bdf60752f54d314e33e78830"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
