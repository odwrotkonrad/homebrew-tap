class CheAT0094 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.94"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.94/che_0.0.94_darwin_arm64.tar.gz"
      sha256 "ec287bb50293c28c5d500fc00b9622489845e1a32c18e018b49e2367f090ba4f"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.94/che_0.0.94_linux_arm64.tar.gz"
      sha256 "e452a33d6525e3c742051e95d97c2183b87d299604fa424c4dd948b9145d1803"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.94/che_0.0.94_linux_amd64.tar.gz"
      sha256 "1ef938a48ef3d8f05c7133a1fc27a59a607769e7cd5884313b36694a440deae0"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end