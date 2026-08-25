class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.97"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.97/che_0.0.97_darwin_arm64.tar.gz"
      sha256 "399551f00e428e39ffce0ae08f87700250aba22d0fc0fbac54a3b901eeeb14fa"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.97/che_0.0.97_linux_arm64.tar.gz"
      sha256 "f8d8b44b3efaa6809b455e447c2cbbbcf1decfcfd7f172ebac23260d27c78a2e"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.97/che_0.0.97_linux_amd64.tar.gz"
      sha256 "8dfa1cd664737a5b3354b538d2f7672acd9306dba6fcc461f5abfa027cf96802"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end