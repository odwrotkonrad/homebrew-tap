class CheAT00101 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.101"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.101/che_0.0.101_darwin_arm64.tar.gz"
      sha256 "5d50dba3066a054a286e0110efed8f248fd28d992a57866ccb268838924fce86"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.101/che_0.0.101_linux_arm64.tar.gz"
      sha256 "891ebc0909e00fee0233b685ef4ec04471902933eecce8fec7387b4b89319e1d"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.101/che_0.0.101_linux_amd64.tar.gz"
      sha256 "474d8ba1d53a5a080953fadecd9ef5c1519ca7dd8a601afe06048e67a5c3d40a"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end