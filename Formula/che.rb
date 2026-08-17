class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.78"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.78/che_0.0.78_darwin_arm64.tar.gz"
      sha256 "eda7fe5adb8815481f1c49e1cdd84968705f6ee08cfc9519f0f6cd113bd9a620"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.78/che_0.0.78_linux_arm64.tar.gz"
      sha256 "289338e90294d464136fc0a80e8a202152038a7ddbfe9035078b1d9105500476"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.78/che_0.0.78_linux_amd64.tar.gz"
      sha256 "4790b2514a9f871509e199d3fd5894d769bd7babf41cacb7b30e0fd9e2c8ad07"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end