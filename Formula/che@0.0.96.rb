class CheAT0096 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.96"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.96/che_0.0.96_darwin_arm64.tar.gz"
      sha256 "683a06ffb9cb243215fc473b50ebecb3625b2db88cffb428a5ef8433960c5b0f"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.96/che_0.0.96_linux_arm64.tar.gz"
      sha256 "3cf7432fcdb02c630c07283b86ada753a9f19d9d44919b786b2da9524be6cb8e"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.96/che_0.0.96_linux_amd64.tar.gz"
      sha256 "4ea8b3714c6ad853a61d97a1df3a9d9dd2d470ceaa3c5bb6fbdc932ef7d81158"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end