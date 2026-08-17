class CheAT0077 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.77"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.77/che_0.0.77_darwin_arm64.tar.gz"
      sha256 "4eb8a2db8e1669e26e2b7976e7e72718b61bed31c5a9111ef43b6e98e2453650"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.77/che_0.0.77_linux_arm64.tar.gz"
      sha256 "b0eee8d42985fcee75e0f4c98dca8f8afd0053492129a716824bda892951121f"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.77/che_0.0.77_linux_amd64.tar.gz"
      sha256 "f25a785d6988057d244d873ac3893f482ca1119fe872b628d29bd9d63c3eae27"
    end
  end

  def install
    bin.install "che", "render-tpl", "render-dirs-tree", "render-makefile-doc", "render-repo-group-index"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end