class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.80"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.80/che_0.0.80_darwin_arm64.tar.gz"
      sha256 "41a581d22b5d795d21a483fa20ed6e2150eb85d4954aa815528fbd50f66b33f2"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.80/che_0.0.80_linux_arm64.tar.gz"
      sha256 "13b20ca17f7d51ceb088267f30ff88df83ea42dfd70b4a2cace9c9e6f9b45b2b"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.80/che_0.0.80_linux_amd64.tar.gz"
      sha256 "6c7fa04468116f5ae855a6b8b6d9b8cc136582f2dbdf6357a7d5322a9127d6fa"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end