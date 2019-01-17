class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.37"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.37/statping-osx-x64.tar.gz"
      sha256 "d4ed84b51e0e60d71b50c71c6238d256a0c24f0f7bfbbb06ff4450ab30701664"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.37/statping-osx-x32.tar.gz"
      sha256 "0d97b2f8bfc664dd722fa26774016188502e48c815f0c53bbbd2e4fb3164315f"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.37/statping-linux-x64.tar.gz"
      sha256 "26d4356457445261e3e9b646e4d0e2701732c25c74bcd1e83cd84be063b85a0b"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.37/statping-linux-x32.tar.gz"
      sha256 "70684a6ecb7f2ffbe4ce15773cec5e858bf1ca913f4ea848fb5407b343725365"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
