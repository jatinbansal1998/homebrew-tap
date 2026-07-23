class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.8.1"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.1/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "be7c4db54d993a797c2edb949495b2b0b7001955b5ed0a4868e396180340071a"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.1/jenkins-cli-darwin-x64.tar.gz"
      sha256 "c6f1638a5a611cddaf1e8dc40bece7e6a7e87c748a5cfb8dc07fc35ad1a6d244"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.1/jenkins-cli-linux-arm64.tar.gz"
      sha256 "df31f6295071ebfb46ab3e2b3553de55f4fbd71302ed8bdf4c84fa735c49261c"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.1/jenkins-cli-linux-x64.tar.gz"
      sha256 "ffc06b150f38729d0db6aebfa78325b98721424eb5d887ee66d41ba2451332f0"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
