class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.58"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.58/statping-osx-x64.tar.gz"
      sha256 "e9f355a024a6b5613793127fab8f987368b235086455f3f073cde45d3d698813"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.58/statping-osx-x32.tar.gz"
      sha256 "e38a61284959b30728650d4ade2986b1e815da9cdddec72cfaaad25523e573b9"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.58/statping-linux-x64.tar.gz"
      sha256 "664acc1a03abb366cf1b5e0c290b1fb105ee2826848fd598ec0a8be26b19beeb"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.58/statping-linux-x32.tar.gz"
      sha256 "ab66970f4ce61396ee67132cffd59139fa9af17376034dd040a6b1498c026b92"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
