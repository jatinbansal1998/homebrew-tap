class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.4/jenkins-cli"
  version "0.7.4"
  sha256 "9979c207d19f4fb89ae446fb7c478bfda6dbe001215d8b8e552c17f639f5fc85"

  depends_on "oven-sh/bun/bun"

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
