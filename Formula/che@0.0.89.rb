class CheAT0089 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.89"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.89/che_0.0.89_darwin_arm64.tar.gz"
      sha256 "98777c5e1ae9bf770c438e31b50e19bdc5486d1450aabd571584d4b5637fdf64"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.89/che_0.0.89_linux_arm64.tar.gz"
      sha256 "8d16ed15eb300bdeadea7fa81784b77cd575e5fd298ca00dc6c2298c81ca6439"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.89/che_0.0.89_linux_amd64.tar.gz"
      sha256 "30a76c58724401a4c25056cc1f61cc585d3640f09896c4fcd0a101b244718cd3"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end