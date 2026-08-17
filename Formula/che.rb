class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.79"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.79/che_0.0.79_darwin_arm64.tar.gz"
      sha256 "3c13eb080fecbd32632c23ebc5f8000e94eb480893bb0e8d5b0515994a311d5f"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.79/che_0.0.79_linux_arm64.tar.gz"
      sha256 "3c72311a09d2c86d245c70e6e884fcc67fcb4240a30e90a07820168dfb353136"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.79/che_0.0.79_linux_amd64.tar.gz"
      sha256 "91c3110dde33576e546821c0c1e7427a700e00ab5a222d7ec5237f3b916ac26f"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end