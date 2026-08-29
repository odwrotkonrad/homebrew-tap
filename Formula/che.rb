class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.105"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.105/che_0.0.105_darwin_arm64.tar.gz"
      sha256 "d05bbbfbca5cc39b8ab5d28502bd22edb9b5c77f327704c4b60a70d7cabf8ab2"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.105/che_0.0.105_linux_arm64.tar.gz"
      sha256 "e49d1fb6dce3f4f55c44ffa3b8ad9c9e6a2a2f2160209f6e997f322ad476a136"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.105/che_0.0.105_linux_amd64.tar.gz"
      sha256 "f364fbf3042e4e03fc5568f2498c5dbca65ef5d0eb5e834e56509ebf03e9bb43"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end