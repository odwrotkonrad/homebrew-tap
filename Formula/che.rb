class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.95"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.95/che_0.0.95_darwin_arm64.tar.gz"
      sha256 "6fd1f94357b9dab6d3d211b40f686d082d7039d220f61a6d831a266e844d3678"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.95/che_0.0.95_linux_arm64.tar.gz"
      sha256 "08a6c07584b13b750666dc84ed052eb9b5b2be499c0df849ddf675e2794c6b95"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.95/che_0.0.95_linux_amd64.tar.gz"
      sha256 "df87b57d4005e6219f27eb74c63ee1f74bdaaccb9974a6536a04bf1cc0078b05"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end