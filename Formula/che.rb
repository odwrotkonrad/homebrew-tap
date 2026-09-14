class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/che/che"
  version "0.0.157"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/86147432/packages/generic/che/0.0.157/che_0.0.157_darwin_arm64.tar.gz", headers: ["PRIVATE-TOKEN: #{ENV.fetch("HOMEBREW_GITLAB_TOKEN")}"]
      sha256 "2aaeb588d4fe0c4f24a2ff4d9b9da4d92e69a7892eebcf6c2a87dcbc5f0dcebe"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/86147432/packages/generic/che/0.0.157/che_0.0.157_linux_arm64.tar.gz", headers: ["PRIVATE-TOKEN: #{ENV.fetch("HOMEBREW_GITLAB_TOKEN")}"]
      sha256 "38bad6d3e358d2b07ad9f628a40b7b223fbbe808ed455d8a8dc133ed907073cb"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/86147432/packages/generic/che/0.0.157/che_0.0.157_linux_amd64.tar.gz", headers: ["PRIVATE-TOKEN: #{ENV.fetch("HOMEBREW_GITLAB_TOKEN")}"]
      sha256 "5b85d677d15e9463b7eb5aaaec1a3cc0b810c0beae8dbc3336cea1cdd3a5e34f"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end