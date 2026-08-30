class CheAT00123 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.123"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.123/che_0.0.123_darwin_arm64.tar.gz"
      sha256 "a98c84e53084e9e9c72144c4afd2252096836b75873d1c6fd309e5bf04014ab3"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.123/che_0.0.123_linux_arm64.tar.gz"
      sha256 "81c06a78dbc7d4af9b486f28d4fb465c160f6363b1e907d1db2987594e63b3d5"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.123/che_0.0.123_linux_amd64.tar.gz"
      sha256 "abd339ec2394bb12f94cf0207f76e9a610e01437fb4cdf486e66d95d0e403244"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end