class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.90"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.90/che_0.0.90_darwin_arm64.tar.gz"
      sha256 "bc7af44429570da2dfa02a5c9b3b5a188994f0afd745b253181e5c3a33738f54"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.90/che_0.0.90_linux_arm64.tar.gz"
      sha256 "cd7b11f4a86a9f0a80d25cd85773f9db70ae5ccb0d9392e331daec9f483104d5"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.90/che_0.0.90_linux_amd64.tar.gz"
      sha256 "b4e76c5b29ad718ae58c641a9fc51d0c6972114a93f0fe47cf2f90a00072c7ac"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end