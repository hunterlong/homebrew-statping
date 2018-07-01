class Statup < Formula
  homepage 'https://statup.io'
  desc "An easy to use Status Page for your websites and applications."
  homepage "https://github.com/hunterlong/statup"
  version "0.28.5"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.28.5/statup-osx-x64.tar.gz"
      sha256 "e9f370bf85481a9c1a423dcd1f27e4e2d60367959f52850d4a08cf6d5b523d02"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.28.5/statup-osx-x32.tar.gz"
      sha256 "ab514ee2cd84506ef2b4de7d74422603551883d1dedb1a38c50b1401416aa1f6"
    end
  elsif OS.linux?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hunterlong/statup/releases/download/v0.28.5/statup-linux-x64.tar.gz"
        sha256 "ce3b18f0c90fbcfafdeb64605e80abc026536c2bab2743b9a96735f273623b3e"
      else
        url "https://github.com/hunterlong/statup/releases/download/v0.28.5/statup-linux-x32.tar.gz"
        sha256 "ea0c2aa4325b72081b5af46a2a2a4a827e4dc75b137bc1b6a453d2fe792cac56"
      end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end

end
