class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.79.93"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.79.93/statup-osx-x64.tar.gz"
      sha256 "f08fab1567c60e7c359cf84a6cc9d3f7eef28d1d41a846cb29dd1196e90b17b8"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.79.93/statup-osx-x32.tar.gz"
      sha256 "3471b97dc098cab86d41a658e650a8715e36e152e3af1577ac776f1a57f536c5"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.79.93/statup-linux-x64.tar.gz"
      sha256 "df9ff50dae5ea7d94723517aa811a9ea0237bb253ebbb7d353a582273c60b153"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.79.93/statup-linux-x32.tar.gz"
      sha256 "04945c3508c7133f65a286533b095538c81dfbae674d9c119bbc1c0837628a14"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
