class Npl < Formula
  desc "CLI for NPL (NOUMENA Protocol Language)"
  homepage "https://github.com/NoumenaDigital/npl-cli"
  version "2025.2.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-macos-aarch64-#{version}"
      sha256 "816730fdfbf760b62b6b01889d0c0cfba24928a3a99e447f6457c2a0d2abca89"
    else
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-macos-x86_64-#{version}"
      sha256 "4fda9c3cb0b1a7c9d7674f9673cddb229f21990d63ba6273764264719deeb64a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-linux-aarch64-#{version}"
      sha256 "393fd9d7e93e293a6d33f6cc538310c889ebe32a2f4f61d7ab20f3d57036e597"
    else
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-linux-x86_64-#{version}"
      sha256 "28edf3124b4da252caba2d9356df46ba6b22f8ad95c13c40fd5316fd3dd55b0c"
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
