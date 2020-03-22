class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.11"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.11/statping-osx-x64.tar.gz"
      sha256 "0124a11b30c98ff31d9be8689a2d454f0c3c3f42eb87724bc9b31ae440b96f4e"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.11/statping-osx-x32.tar.gz"
      sha256 "7f8ee25878f91f03e79ae898c4fdf0f05e817f3b5fcb585c26f82fc93deda277"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.11/statping-linux-x64.tar.gz"
      sha256 "0ed08c737430a337315ad09a3c6b8ac05b1512092e146bca92e7358d55394f18"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.11/statping-linux-x32.tar.gz"
      sha256 "b2fe25f3d67c5678e8a7e4f82c5adf5d456abf655ba03215cd9777617d76fc86"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
