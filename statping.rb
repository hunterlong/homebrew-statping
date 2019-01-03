class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.33"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.33/statping-osx-x64.tar.gz"
      sha256 "fab9d2dccae6e22bafd33fd8f2865c3464269562cfa3a43a7d003f0bd3706133"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.33/statping-osx-x32.tar.gz"
      sha256 "4b2b22b7a997bfb831505b24f39dd72a9e956880695aee363862d8bdf17ea76e"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.33/statping-linux-x64.tar.gz"
      sha256 "75d7c40b9935b3b9d010c473baf0b0eafa10d068e5bc5077a76979c63cb59724"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.33/statping-linux-x32.tar.gz"
      sha256 "b7bb22665419544d3e5bcbe35524afe62fbed91251590e36a498a87b52c4a9aa"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
