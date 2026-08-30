class CheAT00114 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.114"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.114/che_0.0.114_darwin_arm64.tar.gz"
      sha256 "69eb01e25526a8693a63e2e5277e615ec875cc1a81c0e27222066e661e52380d"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.114/che_0.0.114_linux_arm64.tar.gz"
      sha256 "48aeef35f73f62235ef2b470d0f45116051d20a10bf4409bc6bbef275740063a"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.114/che_0.0.114_linux_amd64.tar.gz"
      sha256 "d346daa0b9587e94bdba49496ec8fb208664b9c394479bdafddd5452467893e4"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end