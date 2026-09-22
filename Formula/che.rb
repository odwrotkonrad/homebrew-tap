class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/che/che-source"
  version "0.0.170"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/86147432/packages/generic/che/0.0.170/che_0.0.170_darwin_arm64.tar.gz", headers: ["PRIVATE-TOKEN: #{ENV.fetch("HOMEBREW_GITLAB_TOKEN")}"]
      sha256 "a4bbf59544a47dd0ee79ea40815cacfb234faa2c9c3cf0669255624e81e74ccb"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/86147432/packages/generic/che/0.0.170/che_0.0.170_linux_arm64.tar.gz", headers: ["PRIVATE-TOKEN: #{ENV.fetch("HOMEBREW_GITLAB_TOKEN")}"]
      sha256 "5c7122fa677d98556cbfea6e2054fdbd48e0015b00fc7e88133f90a473e20cbb"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/86147432/packages/generic/che/0.0.170/che_0.0.170_linux_amd64.tar.gz", headers: ["PRIVATE-TOKEN: #{ENV.fetch("HOMEBREW_GITLAB_TOKEN")}"]
      sha256 "5463b4a9aa37f32dbd8a26b14dbf0af7c53cb08f1ccee106612a23def6078a92"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end