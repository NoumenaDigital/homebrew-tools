class Npl < Formula
  desc "Noumena Protocol CLI"
  homepage "https://github.com/NoumenaDigital/npl-cli"
  version "2025.1.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-macos-aarch64-#{version}"
      sha256 "fd6d8194300aefcd63f9e590bdba15a49d927f98967d23e9d89aba225354162f"
    else
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-macos-x86_64-#{version}"
      sha256 "e49f68c7320082c157f1ea0400bfb3170f28006e483d7001347a3fe939cc27e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-linux-aarch64-#{version}"
      sha256 "d462774d62750cb153f20d0797ca11e14a9cbfa5d2a24ec6894fccaf2fc5ab14"
    else
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-linux-x86_64-#{version}"
      sha256 "7e9e848317a9c1fef845f50f356e65c62e57db130812a5e70f62e58274976c46"
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
