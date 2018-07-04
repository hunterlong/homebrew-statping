class Statup < Formula
  homepage 'https://statup.io'
  desc "An easy to use Status Page for your websites and applications."
  homepage "https://github.com/hunterlong/statup"
  version "0.29.3"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/0.29.3/statup-osx-x64.tar.gz"
      sha256 "54b1d46a3e73398201dabbce8c38d1ff1d058a9d1167840da82894dfb86758ad"
    else
      url "https://github.com/hunterlong/statup/releases/download/0.29.3/statup-osx-x32.tar.gz"
      sha256 "c79ebd503455d18dadadbca795206980bfcc126f04e4e1c1608f8f7f3eed90d9"
    end
  elsif OS.linux?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hunterlong/statup/releases/download/0.29.3/statup-linux-x64.tar.gz"
        sha256 "d1337ffe3967eb16394a17339fbc3c8ef636efc62ee842d03c6ab3454110387c"
      else
        url "https://github.com/hunterlong/statup/releases/download/0.29.3/statup-linux-x32.tar.gz"
        sha256 "ae6b9505c47143daca9c16d1831a1140706c8d33bc45f732b6c176bc44d92f18"
      end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end

end
