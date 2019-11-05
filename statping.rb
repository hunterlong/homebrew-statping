class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.65"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.65/statping-osx-x64.tar.gz"
      sha256 "6342259544f16a6e3cbd5c949ac4e4b543eec47e18a939d9642f06ee5fd87a5c"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.65/statping-osx-x32.tar.gz"
      sha256 "5f11d207b5b5166e4cba7df0bc8668f87ccdee2739342f940185c6b60e3a1314"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.65/statping-linux-x64.tar.gz"
      sha256 "33e2454c4fe4045521b684af562e6bbb2270885e4e5b019fc0aa1cab7df9de3c"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.65/statping-linux-x32.tar.gz"
      sha256 "19bf17f01d87e9a86ad1f862d96ee8aac3c5f244c4a91f7223b2076f05fea315"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
