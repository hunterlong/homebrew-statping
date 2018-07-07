class Statup < Formula
  homepage 'https://statup.io'
  desc "An easy to use Status Page for your websites and applications."
  homepage "https://github.com/hunterlong/statup"
  version "0.29.7"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.29.7/statup-osx-x64.tar.gz"
      sha256 "9981e37d99882044bca1535f083a97f4e20cec9f4e80fd0ac4e67da6f7c5d220"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.29.7/statup-osx-x32.tar.gz"
      sha256 "d2ea8d71bbbe61ef35bc7d6cea271ad431535efd0c2477ca746a6e8facb0826e"
    end
  elsif OS.linux?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hunterlong/statup/releases/download/v0.29.7/statup-linux-x64.tar.gz"
        sha256 "beb3bf413839499a78c821984696bd721b1effc9d07f1d24081c8e1f21f6c968"
      else
        url "https://github.com/hunterlong/statup/releases/download/v0.29.7/statup-linux-x32.tar.gz"
        sha256 "d5d6ff32b363b854fe46e33e1c23b36090a52ea70685d2c8a69b3ae21c37f8f6"
      end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end

end
