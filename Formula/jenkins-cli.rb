class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.8.3"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.3/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "952402df149095144fba246372d280893ca0dacf1af26dd42c37bbcd42984530"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.3/jenkins-cli-darwin-x64.tar.gz"
      sha256 "1c3c37c18461119ae1af7793e8a7a192a9f2fbfdf81196b8857331afd3be43c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.3/jenkins-cli-linux-arm64.tar.gz"
      sha256 "f65b61217ae7dab80f224a6f5d6c364b133acd78f20898001c9c290ddeef50ea"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.3/jenkins-cli-linux-x64.tar.gz"
      sha256 "74b41605e1ec8c116ba2d11958030dd6710d0d65ce58d77cc7759a1bd3e270be"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
