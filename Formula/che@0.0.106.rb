class CheAT00106 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.106"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.106/che_0.0.106_darwin_arm64.tar.gz"
      sha256 "673515a94dedc23c1f0f2152ab9ed210ae2d92ab8e7eba5531bdf9a5493dc48a"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.106/che_0.0.106_linux_arm64.tar.gz"
      sha256 "dcd4e3b3a14265562e34e95875adcd97bea9e650b0d1db3ca6b1742a28699708"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.106/che_0.0.106_linux_amd64.tar.gz"
      sha256 "85cc1f39d05521abd5317ac16cd076c15e0b8075bce49acf4872c52e196bdfcc"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end