class CheAT0082 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.82"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.82/che_0.0.82_darwin_arm64.tar.gz"
      sha256 "4ebf40e189cdb8accedb6bc0edaefd521155a97ac3d53bf10d51bd66aeee135d"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.82/che_0.0.82_linux_arm64.tar.gz"
      sha256 "5064780da7b3a07f6a56a9ad917f6ae6d26347c2ab9d9d082e3b1c0359e14d5e"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.82/che_0.0.82_linux_amd64.tar.gz"
      sha256 "dd0c5d40b1550ef9d2a8610aed53c694da94aff8b7897eaed85894aff5a0521e"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end