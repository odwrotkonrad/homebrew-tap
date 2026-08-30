class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.122"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.122/che_0.0.122_darwin_arm64.tar.gz"
      sha256 "57ca2e8a6375fa74725b7ad6b399b92043d0fe0990803589b4487363d7a65ce5"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.122/che_0.0.122_linux_arm64.tar.gz"
      sha256 "d085fa34f725fb563b0f5e89be840a1fa5314e5b8f2293a68fe9d092475f353e"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.122/che_0.0.122_linux_amd64.tar.gz"
      sha256 "adae8fa6596ee53de759fd9ece0a0e68f2599beb92fb1df6c5c1dc387077f981"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end