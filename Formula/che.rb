class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.87"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.87/che_0.0.87_darwin_arm64.tar.gz"
      sha256 "fec9a52ed9bc2c36fe8e01d7a1e459bf9035cecdbb9ff216e83895e40794eabb"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.87/che_0.0.87_linux_arm64.tar.gz"
      sha256 "2ad8de38aa0b2e29f38bb6b0f9ec24cc348938bd2f4428c9b88425cb92e0bb2e"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.87/che_0.0.87_linux_amd64.tar.gz"
      sha256 "c0db37906028ef50045a26df5c2fccce83a95ed100de22ef5ac5a271f28a839d"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end