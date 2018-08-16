class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.43"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.43/statup-osx-x64.tar.gz"
      sha256 "090757637ddaf044d721b5075af4dbbb74d00452e685a37ead96d696291d5ce7"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.43/statup-osx-x32.tar.gz"
      sha256 "079fda8fb23b0c0b413775bc45ed9805392191361ef7d90a20c0109b98b66491"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.43/statup-linux-x64.tar.gz"
      sha256 "2dd8ac2be31b2f6cf39e3b0de15c7345012ba245754985ba03f0c7925c8ceb19"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.43/statup-linux-x32.tar.gz"
      sha256 "1b7085c45c05e0312a17744e87b5c6d3f3c676b30ca5ec8f89434c87108c7fa2"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
