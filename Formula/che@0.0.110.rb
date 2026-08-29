class CheAT00110 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.110"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.110/che_0.0.110_darwin_arm64.tar.gz"
      sha256 "980800df95a1c8d5262fa5b35826eaa56e8d7e9e4dec51683f79542d9ec51eba"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.110/che_0.0.110_linux_arm64.tar.gz"
      sha256 "2643609699e60d4cf11da40bf5c97e1214e2147aed480fccda370bd83a5e2644"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.110/che_0.0.110_linux_amd64.tar.gz"
      sha256 "f398e19d7eb9ffd07ef5d17ceecbe6079c1e03e0d898b9022ae4dfa8203cce9a"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end