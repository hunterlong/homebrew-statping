class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.37"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.37/statup-osx-x64.tar.gz"
      sha256 "55774c57c7f99fabbd88f516ef8879dd4fe36d397bfe7a5a339f4b83b45acc75"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.37/statup-osx-x32.tar.gz"
      sha256 "82804c6f1a66397b15e84714c28c30a0473d87d3b985d2dce8d5291fc132932c"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.37/statup-linux-x64.tar.gz"
      sha256 "380bdfdf775b857c900e870166e0b4498c282dce3ad141a7bdb2ac932e01587b"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.37/statup-linux-x32.tar.gz"
      sha256 "4df734802cc9401a30be75d7bbbb71f5943e99c7869594276488ea6e09ae9ab7"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
