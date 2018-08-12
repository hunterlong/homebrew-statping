class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.36"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.36/statup-osx-x64.tar.gz"
      sha256 "206f3018689b03bd6615d1013ce99c5ae85d89191d5a6cd4055d51f4de849746"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.36/statup-osx-x32.tar.gz"
      sha256 "197c7da63954f4320ce5230dbb7aa63f121035d33f68b8f09d55d866b43df301"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.36/statup-linux-x64.tar.gz"
      sha256 "b422c76b0b69ee19bb5c7d0e0666bf27d9f0625831d0d1bff126055ae080accc"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.36/statup-linux-x32.tar.gz"
      sha256 "e474d0fb2c3cce3185468ab9d729f7bd4cbc46be9f37ee7d14d4cc22503ccedc"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
