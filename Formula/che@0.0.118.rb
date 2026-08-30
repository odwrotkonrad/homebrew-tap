class CheAT00118 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.118"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.118/che_0.0.118_darwin_arm64.tar.gz"
      sha256 "b8994620be600affc823df9f86383f382453919567e865eab02d63fcff377b07"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.118/che_0.0.118_linux_arm64.tar.gz"
      sha256 "cc31de148d8c05add25bd5b34fc65b740539f0bb3f076d7f31e43ce18e2ec520"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.118/che_0.0.118_linux_amd64.tar.gz"
      sha256 "b3d000ae4ff114b6578328ad9e8e04fb62ae68afcaf8f3f7fe23282643b02401"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end