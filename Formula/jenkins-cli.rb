class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.8.9"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.9/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "71c006047d6f506a43cb2eb44f813a675c20f0707e9698f517caf8353a7b826f"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.9/jenkins-cli-darwin-x64.tar.gz"
      sha256 "6366049d594576916faab649ed528686b9084924f679c6dd118b1db4f4b88b0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.9/jenkins-cli-linux-arm64.tar.gz"
      sha256 "8ff8f282fc14683b0cc8f9ce3099d4adff5508a42e5c668669a350d0507bf715"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.9/jenkins-cli-linux-x64.tar.gz"
      sha256 "68adece9e014c4d6e060f0fd2420905c4152f9fd7293ce86ce1e557ea6b82522"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
