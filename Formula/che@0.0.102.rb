class CheAT00102 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.102"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.102/che_0.0.102_darwin_arm64.tar.gz"
      sha256 "f656348de68297b10206293e6ce6cea14b9ad019ecf8afa1eee21699ab63b5e8"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.102/che_0.0.102_linux_arm64.tar.gz"
      sha256 "756d9cdd09802b89878e5cb4208bc19fdce820b3e574b7837f23eae34590b3e2"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.102/che_0.0.102_linux_amd64.tar.gz"
      sha256 "ba90ed3e06e07637b44e25fc0dadbc16de3c293845ce32c4fe63d2cf60964ab4"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end