class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.75"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.75/che_0.0.75_darwin_arm64.tar.gz"
      sha256 "7219642291eb381325f870a82bad278158a7a89503fa193b315ee33d20168d3d"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.75/che_0.0.75_linux_arm64.tar.gz"
      sha256 "e09390aedf12aae46f32e6df00557759d277975e88b7487ec831672de3a4b0ca"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.75/che_0.0.75_linux_amd64.tar.gz"
      sha256 "addaacc90b2f45d16b783f27fd1636dd995cdfd3c2c0deb825464770d041fcb5"
    end
  end

  def install
    bin.install "che", "render-tpl", "render-dirs-tree", "render-makefile-doc", "render-repo-group-index"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end