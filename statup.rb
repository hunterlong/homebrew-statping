class Statup < Formula
  homepage 'https://statup.io'
  desc "An easy to use Status Page for your websites and applications."
  homepage "https://github.com/hunterlong/statup"
  version "0.241"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.241/statup-osx-x64.tar.gz"
      sha256 "d39bc5274cdfa408a65127f9f32ca5dd07d0e7ecc5d8b7b35f9b4337e8a78552"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.241/statup-osx-x32.tar.gz"
      sha256 "618eb196304f5d87308bca39a13e6c31347afd99874c8ee3d7b0480f3c60597c"
    end
  elsif OS.linux?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hunterlong/statup/releases/download/v0.241/statup-linux-x64.tar.gz"
        sha256 "502a91be230a75661cbc1e009d81a6e8fa6443eacd39f809640327ae0bed6ee1"
      else
        url "https://github.com/hunterlong/statup/releases/download/v0.241/statup-linux-x32.tar.gz"
        sha256 "d82b8e416d8bfcf0c1fc14fe6b8d9ae139b6584569cb1b2f32567ba0133497a5"
      end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end

end
