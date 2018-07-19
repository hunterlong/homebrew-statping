class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.32"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.32/statup-osx-x64.tar.gz"
      sha256 "70fb2092d80b59bd378484adaebfdc9da26d34a2c7dbe26e3077648407fafe84"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.32/statup-osx-x32.tar.gz"
      sha256 "fa9c4d3f606384a5fcb08ce2c1544ef3d07136c14c371cbe87efd6d739ecf634"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.32/statup-linux-x64.tar.gz"
      sha256 "c7fc20b423315a74cac458d1038aba76bd0ea0f2cc3b016fc1f6de64b4ad8f3a"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.32/statup-linux-x32.tar.gz"
      sha256 "f8b82f092260299ec136aa55f7a57089f4b4c690e5122d1f64c47e909fcc1587"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
