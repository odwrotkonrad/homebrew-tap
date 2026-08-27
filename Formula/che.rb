class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.99"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.99/che_0.0.99_darwin_arm64.tar.gz"
      sha256 "fc5a7a226c24ac897daaca70073ef34f428fd86e7b1fce8250dbf1a9d83870fb"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.99/che_0.0.99_linux_arm64.tar.gz"
      sha256 "236501761eabad85d6bd0d592119ebd413873ffcc6ec5ac7baa741fb28c88c9e"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.99/che_0.0.99_linux_amd64.tar.gz"
      sha256 "dc8409e31a332148acf68656ed63c1327b8348371c9e3d856dce30ea7f074d7a"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end