class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.69"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.69/che_0.0.69_darwin_arm64.tar.gz"
      sha256 "96f3889d2cbbddf911012ce92c5598be35971ce6ffac121a3c7074fb539e99b9"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.69/che_0.0.69_darwin_amd64.tar.gz"
      sha256 "d0b14befb33b17ac56bd1dca8838a2806deb90ee64fc3b41865cd5cc5fac981d"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.69/che_0.0.69_linux_arm64.tar.gz"
      sha256 "e8e14b745e558c42792a59d5e680d6586387e2fb076555e0cb7295cea4fd27ef"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.69/che_0.0.69_linux_amd64.tar.gz"
      sha256 "ce2dfb98e62e4dd37f9c60f5b4153f111b180672c949c84bb27114d705469b56"
    end
  end

  def install
    bin.install "che", "render-tpl", "render-dirs-tree", "render-makefile-doc", "render-repo-group-index"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end