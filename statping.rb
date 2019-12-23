class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.66"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.66/statping-osx-x64.tar.gz"
      sha256 "33ca3237a57d6ec8a329ec835399026f39037a37e0b841d11f7d23515c06395e"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.66/statping-osx-x32.tar.gz"
      sha256 "f752bd6c30b560b5c9f9c232acfe8bcc392da6643dee9caaf9c17819fc76ca78"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.66/statping-linux-x64.tar.gz"
      sha256 "241aee1614ad90e9a6b7cc007786734795069ae9c0f1f7975f46b4426be57f8d"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.66/statping-linux-x32.tar.gz"
      sha256 "e1bcdf31c49fafea94f62fb6e24ce6701fb72aed8cb524d98d4080ec8100c9fb"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
