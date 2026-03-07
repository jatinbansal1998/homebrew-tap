class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.0/jenkins-cli"
  version "0.7.0"
  sha256 "04177e52b78df33158bec5ecf74ee28626b156bbefbe3b014f25de4e638c0635"

  depends_on "oven-sh/bun/bun"

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
