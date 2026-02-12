class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.5.4/jenkins-cli"
  version "0.5.4"
  sha256 "2cf98b0f7996dd8629b9b949ccd8154193507bbf7f0419fd2647e619b345efbf"

  depends_on "bun"

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
