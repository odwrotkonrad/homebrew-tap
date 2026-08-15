class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.72"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.72/che_0.0.72_darwin_arm64.tar.gz"
      sha256 "8f1c0bbad33ef3a077792c4521303fd60e80bc415a547b98ab2b6500aea1ba81"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.72/che_0.0.72_darwin_amd64.tar.gz"
      sha256 "346c0c67285cbac9cd8def718dd472fa67b846e6b59ff3b532ab79e48f4779a7"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.72/che_0.0.72_linux_arm64.tar.gz"
      sha256 "dc1ececfd9a4bde37f3e0265d27721959a996b76d7411c390165838f6d3ca0de"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.72/che_0.0.72_linux_amd64.tar.gz"
      sha256 "5af2f325531b1ebf080f23433e668526888d704faacff81d51a8df7a107939c7"
    end
  end

  def install
    bin.install "che", "render-tpl", "render-dirs-tree", "render-makefile-doc", "render-repo-group-index"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end