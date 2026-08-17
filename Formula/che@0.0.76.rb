class CheAT0076 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.76"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.76/che_0.0.76_darwin_arm64.tar.gz"
      sha256 "2f9c9811de108fff6a7cfabcd3b1a36a2355ad06955f3497c54de2cff1363513"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.76/che_0.0.76_linux_arm64.tar.gz"
      sha256 "7553f231e20e105122be8c080c13b95b2a0cd6d162e5f717683c44e0700756a9"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.76/che_0.0.76_linux_amd64.tar.gz"
      sha256 "08ed143677b459c1c7b62e3f9864d3f4e2d8f6c1e108bf314685519098d8d689"
    end
  end

  def install
    bin.install "che", "render-tpl", "render-dirs-tree", "render-makefile-doc", "render-repo-group-index"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end