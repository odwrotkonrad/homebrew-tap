class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/private/che/che"
  version "0.0.136"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/86147432/packages/generic/che/0.0.136/che_0.0.136_darwin_arm64.tar.gz", headers: ["PRIVATE-TOKEN: #{ENV.fetch("HOMEBREW_GITLAB_TOKEN")}"]
      sha256 "4e13772f0bf36e32b2f8fadb00d73bd5be2e3fb636c922c41898d2fcc1b3c95f"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/86147432/packages/generic/che/0.0.136/che_0.0.136_linux_arm64.tar.gz", headers: ["PRIVATE-TOKEN: #{ENV.fetch("HOMEBREW_GITLAB_TOKEN")}"]
      sha256 "b420a717863bd4e634002228bfdaeb3da6e3e38366d86e717c8fcb3fc12ef413"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/86147432/packages/generic/che/0.0.136/che_0.0.136_linux_amd64.tar.gz", headers: ["PRIVATE-TOKEN: #{ENV.fetch("HOMEBREW_GITLAB_TOKEN")}"]
      sha256 "730f9543344795afb2afafffcb2a6ff561a75a6d9dd5b681ca08a6b56117f99e"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end