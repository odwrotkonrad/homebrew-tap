class CheAT00109 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.109"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.109/che_0.0.109_darwin_arm64.tar.gz"
      sha256 "2518f4607b7201e96eae0da258c5595ede6ba408012cc8cf08ff9cc1187baf6e"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.109/che_0.0.109_linux_arm64.tar.gz"
      sha256 "7822c24874234ede673364e18a85163ab3a579bec2678a0d5e74cb6475c84db3"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.109/che_0.0.109_linux_amd64.tar.gz"
      sha256 "b078e05f57474f083460b9569d33023756640279fc6cee94ff57fb1ccd27b27e"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end