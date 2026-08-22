class CheAT0091 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.91"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.91/che_0.0.91_darwin_arm64.tar.gz"
      sha256 "9be8241d67dabdfe0a53cd7702be9aa7ff28fe576ec171b0b08914676f2ef18b"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.91/che_0.0.91_linux_arm64.tar.gz"
      sha256 "e34037986d1c26d0e63a3fbbb178c62e0b35c46d7bfc9eae4e6998b7bb5bb716"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.91/che_0.0.91_linux_amd64.tar.gz"
      sha256 "84c072f14d3d2597c0c3106c3c8cc7cc47fdf3ad0d8c8e5a0cb5daa60ead2ebf"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end