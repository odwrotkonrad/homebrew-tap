class CheAT00116 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.116"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.116/che_0.0.116_darwin_arm64.tar.gz"
      sha256 "128c7c7c933e5d87d71a3da80670c0e1724fb68f539d34045e742ba450491fb8"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.116/che_0.0.116_linux_arm64.tar.gz"
      sha256 "0a827d99fc63d7a58fd33baa29d60ce4ad2c6877e41f3b8e6a5d044ad6927042"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.116/che_0.0.116_linux_amd64.tar.gz"
      sha256 "a424beeb74d27d044ed0ac505c62699d15d2c83c1d78b734c4a097ae78d95064"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end