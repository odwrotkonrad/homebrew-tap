class CheAT0081 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.81"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.81/che_0.0.81_darwin_arm64.tar.gz"
      sha256 "24c8cf59dbcae16ebbb50219dcb21948a319ec4ba01edc21b3487eb7304bcf97"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.81/che_0.0.81_linux_arm64.tar.gz"
      sha256 "ba714b41747ae04c13e5db800eefef71a3d48662b6ddbb224b11911b76a34939"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.81/che_0.0.81_linux_amd64.tar.gz"
      sha256 "807dbe3c7eae3b4635bdd4fdc4bfcbf3035947841bddd13caa557ba4087109ac"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end