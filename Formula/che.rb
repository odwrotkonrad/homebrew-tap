class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.104"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.104/che_0.0.104_darwin_arm64.tar.gz"
      sha256 "f732099caec5dd34b472bec01abfe676e843db6607eaed2a47138be05d017830"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.104/che_0.0.104_linux_arm64.tar.gz"
      sha256 "ac12edda32854050d7eeb7ca95080a39d7001a3c3d1f5dc9d42fdc3d94372bfe"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.104/che_0.0.104_linux_amd64.tar.gz"
      sha256 "c990cb7ccc39cce101514f1dea127215abab87e4946afad8aa9460420e044f34"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end