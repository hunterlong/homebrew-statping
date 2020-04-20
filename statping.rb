class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.30"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.30/statping-darwin-amd64.tar.gz"
      sha256 "2c212b55f96b5bfb7d69d9a82a17b3464173a20f8d4269bf3f098c084917efd5"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.30/statping-darwin-386.tar.gz"
      sha256 "6aad77504de63aa514be735621082f6975268727715f279950b695978676ff75"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.30/statping-linux-amd64.tar.gz"
      sha256 "edf16bf2ad9bc1a910856d7c35d044d426546e9b29808de12246a7a043f62345"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.30/statping-linux-386.tar.gz"
      sha256 "8e53160f9994c4c4f6d488190657d295dfc2116d45fa0462f05288a2b2e8b2a5"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
