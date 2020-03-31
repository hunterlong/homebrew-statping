class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.21"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.21/statping-osx-x64.tar.gz"
      sha256 "9d2a0eae9d907119184017b4114d118e56c2bdd51d14729ec08d3c28f56b1d18"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.21/statping-osx-x32.tar.gz"
      sha256 "a4d7a5ecddcd3246cd343433196033257e6a09c83b79bd8edf12df47468ea4fe"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.21/statping-linux-x64.tar.gz"
      sha256 "d6d25fb2502f6ee47ad5e243a004f2190ffd6d3a2bc607817ebc7162ebdcf542"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.21/statping-linux-x32.tar.gz"
      sha256 "e2d28148e0cf897df1f17629b56eb48f5b60d2302774fb42d8c324dda1e9bd2d"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
