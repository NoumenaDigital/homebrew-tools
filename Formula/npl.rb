class Npl < Formula
  desc "CLI for NPL (NOUMENA Protocol Language)"
  homepage "https://github.com/NoumenaDigital/npl-cli"
  version "2025.2.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-macos-aarch64-#{version}"
      sha256 "971f95b8a6de25e1a720d5bb281c8734f56b6a672870741c5d2989ebe527d811"
    else
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-macos-x86_64-#{version}"
      sha256 "25063138cdc06196930548b566c15c4ef91d295cb85e5f4e471320b3ec8ee4e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-linux-aarch64-#{version}"
      sha256 "8460af348e7b099d95b06acbcc4848a3f8fabf84752bc983557b4d164f3e3bcf"
    else
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-linux-x86_64-#{version}"
      sha256 "c5240cb7dbf17d54818f9e2ab763e8cebdd8cfba3a2d9e68876357963f5b5dfa"
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
