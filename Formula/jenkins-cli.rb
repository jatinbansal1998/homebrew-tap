class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.11/jenkins-cli"
  version "0.7.11"
  sha256 "e9c007f8b7d9afaf477065f0ef34f5a34b8ab7459820607fe5570f33b837dc04"

  depends_on "oven-sh/bun/bun"

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
