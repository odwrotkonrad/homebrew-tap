class CheAT00112 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.112"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.112/che_0.0.112_darwin_arm64.tar.gz"
      sha256 "939c6c6e8ca1125101dd0d9e08893f2dc90956a4cc9a9f6f8ec89208bb0f0c16"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.112/che_0.0.112_linux_arm64.tar.gz"
      sha256 "580bc6d83766b18397a3895ac88be4245aacf60320e66d1fbecfa0d998c4750d"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.112/che_0.0.112_linux_amd64.tar.gz"
      sha256 "c8094dc3fdedbd6aa9c46440f6de6198ed9d41b18b3b331d59eba73170cf3c24"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end