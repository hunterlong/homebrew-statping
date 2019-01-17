class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.38"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.38/statping-osx-x64.tar.gz"
      sha256 "fdb64c3bdf1d0e66391b322f14bc4770aa3a798e66e5ddedfdbe2bad296c6c3b"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.38/statping-osx-x32.tar.gz"
      sha256 "fdc562bc91e69c3dbb3b06ab2575fec19e87e578546633aca70c9268ca884028"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.38/statping-linux-x64.tar.gz"
      sha256 "b1270717fb11ca6220a58e4e5f34cd316059c11df70e17f3c4484edf9d8b8060"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.38/statping-linux-x32.tar.gz"
      sha256 "4234f0c3bb448730d73dc328315d714c9a9824dad45ad6fda9de6d7c712d8373"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
