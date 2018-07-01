class Statup < Formula
  homepage 'https://statup.io'
  desc "An easy to use Status Page for your websites and applications."
  homepage "https://github.com/hunterlong/statup"
  version "0.28.4"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.28.4/statup-osx-x64.tar.gz"
      sha256 "731ebbe60865ebdc2104ae1bf18f73445d88a55e1410133aedeac3a51171f16a"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.28.4/statup-osx-x32.tar.gz"
      sha256 "3c8b29dfc2e30478a10c2f2bce13c3f6d480da2a4dfe427c9ea9dcc0aa03b649"
    end
  elsif OS.linux?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hunterlong/statup/releases/download/v0.28.4/statup-linux-x64.tar.gz"
        sha256 "55eeb60bb4ac354af10fd10381705ff87ff03c22a84cff24bed761467f4e88da"
      else
        url "https://github.com/hunterlong/statup/releases/download/v0.28.4/statup-linux-x32.tar.gz"
        sha256 "badf40c3d90028760ac06295b48f99a5f1090ef748a7debac4cdc4d345eb5d50"
      end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end

end
