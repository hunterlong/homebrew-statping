class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.78"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.78/statup-osx-x64.tar.gz"
      sha256 "12d01a3e75ed0e00291b173d5d025afa13684cc91e9fceac34ccc315a836e2a1"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.78/statup-osx-x32.tar.gz"
      sha256 "7dacb36943caa813f546ece911deffe9ba2c0914560fe4c5d1236d5259047494"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.78/statup-linux-x64.tar.gz"
      sha256 "73537bb3ae43127751610eded07ce8ab8edf9091abc62abe813840cd07307280"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.78/statup-linux-x32.tar.gz"
      sha256 "386cd38f30f66a9c5dac09b807779eea239b6817f8ee7ffe56b3053d114b04a5"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
