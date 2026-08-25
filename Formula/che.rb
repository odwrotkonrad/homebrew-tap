class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.98"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.98/che_0.0.98_darwin_arm64.tar.gz"
      sha256 "b8b1409b7cabf5b72ecf6cc9016e1c6b8332943306df82676f9898d086bc0cac"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.98/che_0.0.98_linux_arm64.tar.gz"
      sha256 "320eac52967adbfa4c1ef37f5fc1803eb1f1126de1f1e806720f0b64b2e0f7f4"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.98/che_0.0.98_linux_amd64.tar.gz"
      sha256 "ece0b0c6aaa21e23633ceb0f68080dc42c9dfee4142cfa0c4674943fe67c812e"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end