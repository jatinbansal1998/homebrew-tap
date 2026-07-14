class JenkinsCli < Formula
  desc "Minimal Jenkins CLI for listing jobs, triggering builds, and checking status"
  homepage "https://github.com/jatinbansal1998/jenkins-cli-ts"
  version "0.7.18"

  on_macos do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.18/jenkins-cli-darwin-arm64.tar.gz"
      sha256 "fd1960a6b54ad7451271f31c417313925f26f6dae46bf250f1d3b5513e0df7f8"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.18/jenkins-cli-darwin-x64.tar.gz"
      sha256 "07173f927b4ddd98e3fc7206b11c901fedf19ef02c54507f613f6ca693f99b08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.18/jenkins-cli-linux-arm64.tar.gz"
      sha256 "65c9ac85bf643cf1e1e5d1fe384c43af6637cb03b7e9137a7135fd06994f7108"
    end

    on_intel do
      url "https://github.com/jatinbansal1998/jenkins-cli-ts/releases/download/v0.7.18/jenkins-cli-linux-x64.tar.gz"
      sha256 "1a4535bb9d9f4394e03833d11d277e4338b723198abb0606b28ec540f35835c9"
    end
  end

  def install
    bin.install "jenkins-cli"
  end

  test do
    assert_match "Usage: jenkins-cli", shell_output("#{bin}/jenkins-cli --help")
  end
end
