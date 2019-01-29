class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.40"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.40/statping-osx-x64.tar.gz"
      sha256 "9a25d5b6503c2e1458ecdfed88571c1cf716bf51d8b4f12497856b9cc6c7157e"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.40/statping-osx-x32.tar.gz"
      sha256 "dd7cc8c83094ef1563bba26f7a5c06e6c5b4ff2c7702c5ab75c4744dee8d5932"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.40/statping-linux-x64.tar.gz"
      sha256 "96b8f56d989c8171db8c4b00f2fd710e3c5b9e57a680eea760b474fde10935be"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.40/statping-linux-x32.tar.gz"
      sha256 "0837697fd48ff496555a2483f7fdb5e8ba4a24a05112738fec2ed7d3a96c591a"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
