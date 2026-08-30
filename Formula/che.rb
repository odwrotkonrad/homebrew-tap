class Che < Formula
  desc "Spec-driven dotfile configuration loader"
  homepage "https://gitlab.com/konradodwrot/go-modules"
  version "0.0.121"
  license "MIT"

  on_macos do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.121/che_0.0.121_darwin_arm64.tar.gz"
      sha256 "e80e164e6d28985bdfc1aec496f1c172d03cb86b42856076f678ae4b3d066cd8"
    end
  end
  on_linux do
    on_arm do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.121/che_0.0.121_linux_arm64.tar.gz"
      sha256 "b792586af68b1ff45d7679606194e5538dff628da0dd05782563bf250cd4c7e5"
    end
    on_intel do
      url "https://gitlab.com/api/v4/projects/84252099/packages/generic/che/0.0.121/che_0.0.121_linux_amd64.tar.gz"
      sha256 "f60e1a586d001b50b884aa84aa33efb115329102286b82c6fdacc0b073d23aec"
    end
  end

  def install
    bin.install "che"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/che --version")
  end
end