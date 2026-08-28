class CheAT00103 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.103"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.103/che_0.0.103_darwin_arm64.tar.gz"
      sha256 "80ca98c0b921672e42c04adc253fad2b266b193772af184f64535b592ed112b6"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.103/che_0.0.103_linux_arm64.tar.gz"
      sha256 "b4cc3c068a1e3a387ad253e2d6d3bbe7e69c430a86c54f0c30aaa4cc24128194"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.103/che_0.0.103_linux_amd64.tar.gz"
      sha256 "7a18f28ad3f01de920e2492401d939780361ee5645c1b925fcb4fd44e4cc1b4c"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end