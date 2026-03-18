class Npl < Formula
  desc "CLI for NPL (NOUMENA Protocol Language)"
  homepage "https://github.com/NoumenaDigital/npl-cli"
  version "2025.2.8-1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-macos-aarch64-#{version}"
      sha256 "6d21e707b279f100f5834f19e8e2542078a6580402d921a653a771c591e60d5e"
    else
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-macos-x86_64-#{version}"
      sha256 "5889b73345cc37c7302fb526152d2c7d6ecdef246cbd5e47a3e28dea25c8d416"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-linux-aarch64-#{version}"
      sha256 "cbd04eb1a0362523041b83b95353b1a66e6b66dd4e6662dbdc5224b9303cb0cd"
    else
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-linux-x86_64-#{version}"
      sha256 "c0b5ec492149930a9c4f78004723bd1eb24fcd865c943552c71b834f4e8bc859"
    end
  end

  def install
    bin.install "#{stable.url.split('/').last}" => "npl"
  end

  test do
    system "#{bin}/npl", "help"
  end

  livecheck do
      url :stable
      regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

end
