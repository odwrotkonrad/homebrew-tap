class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.74"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.74/che_0.0.74_darwin_arm64.tar.gz"
      sha256 "6174339a2bc8cbc20a71b016961fb1b93bb33b8fce1c67435396afffa17e4061"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.74/che_0.0.74_linux_arm64.tar.gz"
      sha256 "671dd6de2ee55286b5647c101064584a5d5ff703bc903a467c79f77040b7b915"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.74/che_0.0.74_linux_amd64.tar.gz"
      sha256 "8eb973bb9aeff0f06e386db85d2a742392c2ee2ea3f434c39711c79916f1e3c8"
    end
  end

  def install
    bin.install "che", "render-tpl", "render-dirs-tree", "render-makefile-doc", "render-repo-group-index"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end