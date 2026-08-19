class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.84"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.84/che_0.0.84_darwin_arm64.tar.gz"
      sha256 "2a316f37834f2b1f812f8179a9d03a9fb9aa38919b679575cfcce9098558e2a3"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.84/che_0.0.84_linux_arm64.tar.gz"
      sha256 "b6bcc220ac3f5ecd7cd4cade0f21dd00c0b6f77ce75f4be69327e602029675ac"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.84/che_0.0.84_linux_amd64.tar.gz"
      sha256 "8e1e4b922315c2adbaa875b6eb4b64a3e96f39de9e0007c0a39fbbdb5a1391e9"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end