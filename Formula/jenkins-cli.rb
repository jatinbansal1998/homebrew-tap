class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.8.12"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.12/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "65624d007d72d76f0fdede448cd45d14d524eb8415268056a68d50c40191e4aa"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.12/jenkins-cli-darwin-x64.tar.gz"
      sha256 "790380aea9fdf80d12148dce81494e88de3fd6fbecfdcdbea3ef7719a536a260"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.12/jenkins-cli-linux-arm64.tar.gz"
      sha256 "efce4f869a270ea289bda38ac1cb15ed6c3c3c7aeb656e26c0448b7042f3084e"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.12/jenkins-cli-linux-x64.tar.gz"
      sha256 "f85d94802e25b4ffaa133a7b6750060a2f29b6ea667942278f2eb5f44761ef3e"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
