class CheAT00111 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.111"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.111/che_0.0.111_darwin_arm64.tar.gz"
      sha256 "2414a679910ea30072f7bcaef734ab63f11ae020c2d5a1160e372a372076633a"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.111/che_0.0.111_linux_arm64.tar.gz"
      sha256 "b75c4732d984dda3918e1639aa843191180c561fe9958a361794826876898f73"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.111/che_0.0.111_linux_amd64.tar.gz"
      sha256 "24c0d0721f73c84bf257eb641118a3155764ec132bb5401ea303cc877c6b30e3"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end