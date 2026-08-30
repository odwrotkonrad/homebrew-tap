class CheAT00119 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.119"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.119/che_0.0.119_darwin_arm64.tar.gz"
      sha256 "44ef6687fe823eaa7dbcf9d8bf672a8ce8c2656113df9904b500b0c44f39941d"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.119/che_0.0.119_linux_arm64.tar.gz"
      sha256 "073a3756152c79586774faf67c43edda8f01377c3b7e76718d57ac860c3136e9"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.119/che_0.0.119_linux_amd64.tar.gz"
      sha256 "6f7100bca75e30790577eaaa8bb7dc1d1139c71266e5032be0610230e72d3514"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end