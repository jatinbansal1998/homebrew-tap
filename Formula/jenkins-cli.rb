class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.8.13"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.13/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "218c10bc76c0ac352b23faf6483a587c1c2d1770fe59084b436ba753f282f2b4"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.13/jenkins-cli-darwin-x64.tar.gz"
      sha256 "fd6d305d52bb901edac0ff7de822400a2eb367f37690e1ee84609556c75e46d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.13/jenkins-cli-linux-arm64.tar.gz"
      sha256 "49cf962ea9fef5e0ea53871db3fb851dc64a8ab882298435547784f96a6e0dac"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.13/jenkins-cli-linux-x64.tar.gz"
      sha256 "734a7dbbe135c006b896c93dc1a12dfbc3ca96de3d6519110185dafca54bd4b3"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
