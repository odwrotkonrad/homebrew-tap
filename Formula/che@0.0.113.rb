class CheAT00113 < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.113"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.113/che_0.0.113_darwin_arm64.tar.gz"
      sha256 "9351ed2ffe16097154d6a790e974062d0bbab7ecbf73cbce49aa37f444557a68"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.113/che_0.0.113_linux_arm64.tar.gz"
      sha256 "6faba03f0c7cfbd87771851e12dac82f9106aeef2e5b35e8002262153c949f31"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.113/che_0.0.113_linux_amd64.tar.gz"
      sha256 "fa0846db4d985b5a8dda127e35084a019db630d529b4520b9d97b6f6427531f3"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end