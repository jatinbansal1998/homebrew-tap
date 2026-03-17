class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.7/jenkins-cli"
  version "0.7.7"
  sha256 "6e46bd349c7774fa232be4ca3f920f280d3441189d3c448cda47481fe5a7242b"

  depends_on "oven-sh/bun/bun"

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
