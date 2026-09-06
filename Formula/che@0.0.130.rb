class CheAT00130 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/private/che/che"
  version "0.0.130"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/86147432/packages/generic/che/0.0.130/che_0.0.130_darwin_arm64.tar.gz", headers: ["PRIVATE-TOKEN: #{ENV.fetch("HOMEBREW_GITLAB_TOKEN")}"]
      sha256 "038da65c7b1419c3385965aa3153188f96eec01a6e85ef7ef86801b5fea52622"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/86147432/packages/generic/che/0.0.130/che_0.0.130_linux_arm64.tar.gz", headers: ["PRIVATE-TOKEN: #{ENV.fetch("HOMEBREW_GITLAB_TOKEN")}"]
      sha256 "101629b320d130e5eb6bebd7e43e430e6324c12c3c05ec2c546f11ec904e8854"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/86147432/packages/generic/che/0.0.130/che_0.0.130_linux_amd64.tar.gz", headers: ["PRIVATE-TOKEN: #{ENV.fetch("HOMEBREW_GITLAB_TOKEN")}"]
      sha256 "f087e8f78737e88cf86d76aec58f2b3a9e26c11b2317d6f9a9264f6a15b00cd1"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end