class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.7.17"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.17/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "adfe1afe7a970b4b5be4f23f5fe53c07668b28434b8dff134fda7d7b90f6888b"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.17/jenkins-cli-darwin-x64.tar.gz"
      sha256 "55942095ebc4f0730077fba47bc93264f2e47d2f3355a47c0b8916cb41ff3b48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.17/jenkins-cli-linux-arm64.tar.gz"
      sha256 "f46d24d1bf2d18f96f9e119e46c7ea49dea24374e045e79030659bcd30f9131b"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.17/jenkins-cli-linux-x64.tar.gz"
      sha256 "cf057ad8b709ecc7e3fb486a049ebde0334364789ac8a248bc78a5f53b715a3c"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
