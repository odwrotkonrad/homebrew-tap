class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.93"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.93/che_0.0.93_darwin_arm64.tar.gz"
      sha256 "6b78526fe94a5214658ce69807d9a5d5614a17ee06c698681359a05b9f74f318"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.93/che_0.0.93_linux_arm64.tar.gz"
      sha256 "1c203b78b0613cd43a7687a541276518e0cf630985d0b1437f55d6a31632e9f0"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.93/che_0.0.93_linux_amd64.tar.gz"
      sha256 "f5d28954ff698956f8454d044902d2a8ace5ccc3b0aefbd084f52bd62fb13958"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end