class CheAT00107 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.107"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.107/che_0.0.107_darwin_arm64.tar.gz"
      sha256 "09f59f22f953a0f9003d7a05c6e431692fdb2dbca82afa08700d40620de1abf5"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.107/che_0.0.107_linux_arm64.tar.gz"
      sha256 "d1d39cdc3e4eb42cb25d3ebada07bf7dd2eb75d7be65e20ad849c1318abe7ec0"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.107/che_0.0.107_linux_amd64.tar.gz"
      sha256 "12678becabf310035b8a788ff3d052db6ba3813eb0848d9194b80d8e159ce641"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end