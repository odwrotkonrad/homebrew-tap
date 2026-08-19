class CheAT0085 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.85"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.85/che_0.0.85_darwin_arm64.tar.gz"
      sha256 "62d6d3137756477f3241e08229231d3aa3e2fd6d658a01b7899c7295c0f293f3"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.85/che_0.0.85_linux_arm64.tar.gz"
      sha256 "c012dfbab2ef6d5ade1940e922cf61aa7b5af7ad1c2e27a34dabf3f5879aaf4f"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.85/che_0.0.85_linux_amd64.tar.gz"
      sha256 "029d991c60521010709c2f07de673b4bddb3011e8db22bc226a1c9138833e271"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end