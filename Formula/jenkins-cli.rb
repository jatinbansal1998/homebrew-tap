class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.14/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "2470277416056f00487565dac0a411634f183477434eeeb434dc003afbaf8753"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.14/jenkins-cli-darwin-x64.tar.gz"
      sha256 "cf758507c1b28c1d2b2085a5db9cdc063c2fce3c01c3d163bd5b3a0010f9f4ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.14/jenkins-cli-linux-arm64.tar.gz"
      sha256 "09474683091dad9429088bde139a01ec23422ef59b662feaf07eb4eba8682c37"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.14/jenkins-cli-linux-x64.tar.gz"
      sha256 "8b7c18d2e3999f5df9b44c7f23f820a9a49039effbfa31d17538ce37adbc5840"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
