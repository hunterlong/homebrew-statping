class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.32"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.32/statping-osx-x64.tar.gz"
      sha256 "4ef74d0b70ed22adce58d37bd8c341ec3bf124fe70604a73941e894d8a979cf3"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.32/statping-osx-x32.tar.gz"
      sha256 "cc263477e989d19f2bb75f59464020c1775bde299ea5ede1a258e21bd8e16026"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.32/statping-linux-x64.tar.gz"
      sha256 "83694b0ee37f0e54e259bd39cb15970408eb8c7da6b05bbd989bf5e76125ab87"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.32/statping-linux-x32.tar.gz"
      sha256 "c4b60c920f495ea25d9010f1b63620f6dacdca217086f34a134730c2b1a9d207"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
