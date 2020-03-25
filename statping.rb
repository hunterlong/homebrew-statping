class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.17"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.17/statping-osx-x64.tar.gz"
      sha256 "5c7e3dc33e81b0519dda9c382b44c5a3f907f945dc6b1c082ae619f4f509bcb1"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.17/statping-osx-x32.tar.gz"
      sha256 "1b8ec7e390402555a5dba6198b6f5050068402be241b711fa4b8be76f88dc6dd"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.17/statping-linux-x64.tar.gz"
      sha256 "bec7789bf996a8f7770168aa0cdb654cf66b236d6e618c456637ccc64157738f"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.17/statping-linux-x32.tar.gz"
      sha256 "ade7a1c51cbfaf4adbea35d55a8d85590a331d1d40ec1e5c8d7baa09bd65163a"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
