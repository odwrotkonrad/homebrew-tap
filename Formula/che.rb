class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.68"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.68/che_0.0.68_darwin_arm64.tar.gz"
      sha256 "3993a98de001e1ea014f762b18c169d8675a4374ba20ef69526cfab1a7d5476b"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.68/che_0.0.68_darwin_amd64.tar.gz"
      sha256 "9e84f7635dbd7c3a1b9b12c3d85fe6ec5513f32c3fcbc5e2828bddb3e1f58cb7"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.68/che_0.0.68_linux_arm64.tar.gz"
      sha256 "3b4001be964eea54333d87574a046bb75193193f675c812bd02ede6db5219987"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.68/che_0.0.68_linux_amd64.tar.gz"
      sha256 "bcef884ce9e3c3ad2dd338563569f07d7f2a9357a378886967b87465ccdee0a6"
    end
  end

  def install
    bin.install "che", "render-tpl", "render-dirs-tree", "render-makefile-doc", "render-repo-group-index"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end