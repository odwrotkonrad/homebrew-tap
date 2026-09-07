class CheAT00137 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/private/che/che"
  version "0.0.137"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/86147432/packages/generic/che/0.0.137/che_0.0.137_darwin_arm64.tar.gz", headers: ["PRIVATE-TOKEN: #{ENV.fetch("HOMEBREW_GITLAB_TOKEN")}"]
      sha256 "2d6b4a05b3d7ce1f3388d042c7311d04b58e58e86ce50704ba037a2341e9a205"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/86147432/packages/generic/che/0.0.137/che_0.0.137_linux_arm64.tar.gz", headers: ["PRIVATE-TOKEN: #{ENV.fetch("HOMEBREW_GITLAB_TOKEN")}"]
      sha256 "c5623756b5c25ed0d6420cd6bb94f92ef2316aaf63014e8ecf3dfff0e5a89396"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/86147432/packages/generic/che/0.0.137/che_0.0.137_linux_amd64.tar.gz", headers: ["PRIVATE-TOKEN: #{ENV.fetch("HOMEBREW_GITLAB_TOKEN")}"]
      sha256 "43120323183f7f86d7ea86aa929669f2bb1ec5cde1b592a7a55b99ef1c71f4df"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end