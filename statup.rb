class Statup < Formula
  homepage 'https://statup.io'
  desc "An easy to use Status Page for your websites and applications."
  homepage "https://github.com/hunterlong/statup"
  version "0.241"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/0.241/statup-osx-x64.tar.gz"
      sha256 "7a91dce91777bd030b34dda781ea395bc53f31a947a2afc4a286799f200d804b"
    else
      url "https://github.com/hunterlong/statup/releases/download/0.241/statup-osx-x32.tar.gz"
      sha256 "2c3afce52ae12d990f04d371f050cb869112d30d0a9995d1a1f78935fd4b4fee"
    end
  elsif OS.linux?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hunterlong/statup/releases/download/0.241/statup-linux-x64.tar.gz"
        sha256 "90f44ac055e0ee282cff30982c600e8a22a8a00697ad94cf108af9d48dbd654a"
      else
        url "https://github.com/hunterlong/statup/releases/download/0.241/statup-linux-x32.tar.gz"
        sha256 "038127aa7fd4960e06154f0effb6507ad9e3ec56e6d625905dd90ecc75b4cbe7"
      end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end

end
