class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.79.1"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.79.1/statup-osx-x64.tar.gz"
      sha256 "9bdd7da2913eddf1848bd3c53d5b1678acfa3e6175ac4b563483889ceda6206d"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.79.1/statup-osx-x32.tar.gz"
      sha256 "b35b326c9a21c9fbdcdf85eaf9e3ddc3b4cc68e102461eaec7e58e1918a03f42"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.79.1/statup-linux-x64.tar.gz"
      sha256 "735c7abda8fac00166f4c340d4bdac79e3b5aa0a6931479fc676e7f9cf27c8cb"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.79.1/statup-linux-x32.tar.gz"
      sha256 "0e609d465ab4fafbc2b850e0761fd68c43b36ed068c6a5063a453266a16f0789"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
