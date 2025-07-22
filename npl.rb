class Npl < Formula
  desc "CLI for NPL (NOUMENA Protocol Language)"
  homepage "https://github.com/NoumenaDigital/npl-cli"
  version "2025.1.9-1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-macos-aarch64-#{version}"
      sha256 "cd398c56d98f58c93fac10556888a094e22d4da5c87fdbd70b843c01948790f0"
    else
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-macos-x86_64-#{version}"
      sha256 "bc0f85a6f0f473147864be2828a15bb94812bc22706f95b29c12f52c55068666"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-linux-aarch64-#{version}"
      sha256 "0e1e56deb8489926800550df0335102bbc1052e8747fab23eefca8ac332a443e"
    else
      url "https://github.com/NoumenaDigital/npl-cli/releases/download/#{version}/npl-cli-linux-x86_64-#{version}"
      sha256 "2deac0e6aaf301019ecfac713ceb5a6286e96f3328e2f64f09593ba799ac5162"
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
