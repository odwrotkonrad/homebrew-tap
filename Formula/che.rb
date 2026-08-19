class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.86"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.86/che_0.0.86_darwin_arm64.tar.gz"
      sha256 "bb28e954e8d508d4cbfd4d58a22759a6c34ec08222e870863955781e8107d1a6"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.86/che_0.0.86_linux_arm64.tar.gz"
      sha256 "869d6563b6959442a2288cc29cf0c447c746de41a75b1c0a6f93dcbb12820931"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.86/che_0.0.86_linux_amd64.tar.gz"
      sha256 "0f8a4b46e99393f4c73eac0656aecd1d3be13778d8f7dab934d4987ac511a857"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end