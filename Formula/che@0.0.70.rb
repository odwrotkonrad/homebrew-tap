class CheAT0070 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.70"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.70/che_0.0.70_darwin_arm64.tar.gz"
      sha256 "129d0e6cd03269691eabb375aca9271bb88492934ee74a7ea728b7a72f9161be"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.70/che_0.0.70_darwin_amd64.tar.gz"
      sha256 "96d2ec3beac67e52f67c8b9fe64f69a00f21dc65c20e3169d58492ebc2cf9428"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.70/che_0.0.70_linux_arm64.tar.gz"
      sha256 "47a50e72c3d3c27d96924dba1a5faf00457172fa19c59aea6d8b0eaf63c9d705"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.70/che_0.0.70_linux_amd64.tar.gz"
      sha256 "a019ed9f7d35f881e9040ade35fbd6d0b501c60d6fcfed494fa0a57d22cc9885"
    end
  end

  def install
    bin.install "che", "render-tpl", "render-dirs-tree", "render-makefile-doc", "render-repo-group-index"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end