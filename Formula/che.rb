class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.71"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.71/che_0.0.71_darwin_arm64.tar.gz"
      sha256 "cb9a8706a73009495d8f5b17f2418331236324fcf50d47806ee66a9b2c1654ba"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.71/che_0.0.71_darwin_amd64.tar.gz"
      sha256 "6a042fc8e903f81c66363e7f0056bb66ef94e477e91fb75a89d72fc3ac7ac626"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.71/che_0.0.71_linux_arm64.tar.gz"
      sha256 "1bdf77d3625851bd1953a8be5c074c33a7d85b6dfbcb21624f37e344241f15fe"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.71/che_0.0.71_linux_amd64.tar.gz"
      sha256 "743af9df370cca41580d35accc3f45f9fe360cfd8a5b31e66b6ccb82412b26e4"
    end
  end

  def install
    bin.install "che", "render-tpl", "render-dirs-tree", "render-makefile-doc", "render-repo-group-index"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end