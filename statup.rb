class Statup < Formula
  homepage 'https://statup.io'
  desc "An easy to use Status Page for your websites and applications."
  homepage "https://github.com/hunterlong/statup"
  version "0.29.6"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.29.6/statup-osx-x64.tar.gz"
      sha256 "db91aad6d2054a21aeb8bead936f148f8681788d95ff32b9e8df7bb9dd8e59ac"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.29.6/statup-osx-x32.tar.gz"
      sha256 "00b83531071a95af09008455e65e0893200f8b49cc7d45abb3a65b01e422a7dc"
    end
  elsif OS.linux?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hunterlong/statup/releases/download/v0.29.6/statup-linux-x64.tar.gz"
        sha256 "4702640e61b784bfad200bf1e9a5f57d0abab74d7bb6c2062aeee39181835b2f"
      else
        url "https://github.com/hunterlong/statup/releases/download/v0.29.6/statup-linux-x32.tar.gz"
        sha256 "ea8a77c9824753feb875b8d90bb8a528060ab9278a5dcf88af7a5c14c6917d6a"
      end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end

end
