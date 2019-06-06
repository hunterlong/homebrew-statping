class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.61"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.61/statping-osx-x64.tar.gz"
      sha256 "65f9f739d9bfc1ba1bd17314c8e291e4bb8760436bc831b74f7cf87fede080ee"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.61/statping-osx-x32.tar.gz"
      sha256 "a1c162ce610802bd7c5ff559690b73090e4725262db2544355fedd6008dc907f"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.61/statping-linux-x64.tar.gz"
      sha256 "fe45416fb870802e67abaa3d4fb024d171dfc8a5900931f67c97f8bc94a20438"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.61/statping-linux-x32.tar.gz"
      sha256 "f32d68b683ad644eb4b0a20f73d3d92e5a181bea6c1e7766efc14953eb1573c4"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
