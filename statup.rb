class Statup < Formula
  homepage 'https://statup.io'
  desc "An easy to use Status Page for your websites and applications."
  homepage "https://github.com/hunterlong/statup"
  version "0.241"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.241/statup-osx-x64.tar.gz"
      sha256 "92d55a7d70e3d7dec8a465eb8111d8ee8bdcbc5c4b509d131084bf1db6ab2ead"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.241/statup-osx-x32.tar.gz"
      sha256 "1944dd011c074d7e7f9c6ebfababeb30b32bd3885812d8fc9a94eb96bad42f9a"
    end
  elsif OS.linux?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hunterlong/statup/releases/download/v0.241/statup-linux-x64.tar.gz"
        sha256 "22aecef1f5016b11717a1dc37c63abd8eef0caae4e338a2438bb44368785e6e8"
      else
        url "https://github.com/hunterlong/statup/releases/download/v0.241/statup-linux-x32.tar.gz"
        sha256 "299176a6d22242f48a05a4363c302ff1e7d0d31104880905de66fb0705f2171f"
      end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end

end
