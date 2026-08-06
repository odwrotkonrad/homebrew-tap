class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.67"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.67/che_0.0.67_darwin_arm64.tar.gz"
      sha256 "5ff3a5ba02cbfae80dc61d884be15906764bdd342c485c275091fa48e08e41f5"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.67/che_0.0.67_darwin_amd64.tar.gz"
      sha256 "fd9a13b8e97c48abde9baa14012c908674f064bf53d3176c09398a570a0dda06"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.67/che_0.0.67_linux_arm64.tar.gz"
      sha256 "efe850fd7f62bd12b4448f2eebab4ce485223faf705b80cfe0ea3d8b20e14a77"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.67/che_0.0.67_linux_amd64.tar.gz"
      sha256 "ebbf96bd3a5481190def23a5cd34025b07db77621bd939860cd5d69b88839acb"
    end
  end

  def install
    bin.install "che", "render-tpl", "render-dirs-tree", "render-makefile-doc", "render-repo-group-index"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end