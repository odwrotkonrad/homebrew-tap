class CheAT00117 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.117"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.117/che_0.0.117_darwin_arm64.tar.gz"
      sha256 "66d44634efabe7e3dfaabc4cef11a359a9391871b2b6a7247fd0a8bc49334674"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.117/che_0.0.117_linux_arm64.tar.gz"
      sha256 "85c5035b2cddde606ee97f514838fa1f4882655be64e273f374f8935cc6e0e95"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.117/che_0.0.117_linux_amd64.tar.gz"
      sha256 "517d6370869fa84ead90b4320ce26f9d2f2e7a311ca74ba3c0c888ce9a3ecab0"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end