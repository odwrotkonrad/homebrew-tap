class CheAT00120 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.120"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.120/che_0.0.120_darwin_arm64.tar.gz"
      sha256 "dd4acc43c14d09f0164f6127e3d7d96e3346a55f6a3625fc97655779244ab49f"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.120/che_0.0.120_linux_arm64.tar.gz"
      sha256 "88756e52261f856831390458e9347146ce032e45fbce631fb67b9c4903be97b1"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.120/che_0.0.120_linux_amd64.tar.gz"
      sha256 "bfc202240cadd2aeff2f6ca7e34a233b30de277938c961f5b7b032c1c939c1db"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end