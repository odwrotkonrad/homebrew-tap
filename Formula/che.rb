class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.92"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.92/che_0.0.92_darwin_arm64.tar.gz"
      sha256 "75f4826e98e13e67430ae9439789ea48806794543b81c352dcf3118cf4548d34"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.92/che_0.0.92_linux_arm64.tar.gz"
      sha256 "73a782bdea36243cea41455f70547efdafa35c5a8b8d777dda70e0a654182f99"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.92/che_0.0.92_linux_amd64.tar.gz"
      sha256 "08a6b25864e664285e70f5df318c0d4b36374bca979fc5585b0121c468f1cdc4"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end