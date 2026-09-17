class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.16/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "28de3bb8abba71c172f9cde539cc3a2aefe487e230f653dd0cdbd3ded389f64f"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.16/jenkins-cli-darwin-x64.tar.gz"
      sha256 "976ddcf0673500ac75f42a34c5247d249257abb1e11f56a636963a35a8f22761"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.16/jenkins-cli-linux-arm64.tar.gz"
      sha256 "9d8b890c203cdd5a2d8f9c0eec725f8d9024df624d3e79c999ea255d12bce3dd"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.8.16/jenkins-cli-linux-x64.tar.gz"
      sha256 "857ebf4e4628d4391fc6fe42b37ced62c61b288b374ae7d2711eef3261740ebd"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
