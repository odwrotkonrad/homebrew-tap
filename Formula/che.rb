class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.115"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.115/che_0.0.115_darwin_arm64.tar.gz"
      sha256 "e04fa8f97639e55c425f2643b11ba397a242aa1219f902bb8de0e90be3af48fe"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.115/che_0.0.115_linux_arm64.tar.gz"
      sha256 "4f530b2889990cbb2f3135b375d181e7addcf1c0393b3e7958ed58bde222990a"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.115/che_0.0.115_linux_amd64.tar.gz"
      sha256 "ad86f4c448de44ca71c4db31c5227ca400e8669a88f135b86ed3be2dc6f36d0b"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end