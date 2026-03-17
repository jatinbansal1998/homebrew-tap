class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.8/jenkins-cli"
  version "0.7.8"
  sha256 "c16605d3003a5e65d7dfcc6b3bb0c3ea83061ec743cdfb10c3d9ea96711eebc7"

  depends_on "oven-sh/bun/bun"

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
