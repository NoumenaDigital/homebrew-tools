class Npl < Formula
  desc "CLI for NPL (NOUMENA Protocol Language)"
  homepage "https://github.com/NoumenaDigital/npl-cli"
  version "2025.2.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-macos-aarch64-#{version}"
      sha256 "eed1b52c93767467e3849a51ce004c2861a3f16f3fad98614df34c4ed7fb1b2b"
    else
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-macos-x86_64-#{version}"
      sha256 "4157c033770c79545bffb2901591f76938f943852a4e4ed19ddecbf6a7011159"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-linux-aarch64-#{version}"
      sha256 "9b2e8d14d367b255422d88588c9f3c880e66390b135126a15c72ea31de4ef4ea"
    else
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-linux-x86_64-#{version}"
      sha256 "b2d3a7e379c30a6803f2b67e726491c96881999861ba5b51ca12b3b28a7150d0"
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
