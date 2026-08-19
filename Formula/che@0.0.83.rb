class CheAT0083 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.83"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.83/che_0.0.83_darwin_arm64.tar.gz"
      sha256 "b6c759f95e264cdea42f620de41a47a785637a3d606f5fa5928e9b92179e95c2"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.83/che_0.0.83_linux_arm64.tar.gz"
      sha256 "5881792a9c3630fce5f989bfcab6737b743ed142337aba3f7570678cc4056a2f"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.83/che_0.0.83_linux_amd64.tar.gz"
      sha256 "9bda00ac5e09bee101aa4e4cd6eeb3ac2c186f05ce94e74f3f3580e63f967227"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end