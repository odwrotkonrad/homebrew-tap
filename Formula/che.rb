class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.108"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.108/che_0.0.108_darwin_arm64.tar.gz"
      sha256 "e117fef1a1569a0bc9cf112f956dfac0dc9c8a358b503f9bf207492bf1e5c0fe"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.108/che_0.0.108_linux_arm64.tar.gz"
      sha256 "27b587ec0c4c14fd9329828d075295e9526785a06e1b69564de22f51598049d1"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.108/che_0.0.108_linux_amd64.tar.gz"
      sha256 "fceb4bcb302db5e9d663d128686714f92b7a53edd84c448d3c74be92ab9c08bf"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end