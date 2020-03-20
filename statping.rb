class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.10"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.10/statping-osx-x64.tar.gz"
      sha256 "942ce8e95e99d1e1c4421c150676f59d545f33c867d03ba5ac82c358a6048a7f"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.10/statping-osx-x32.tar.gz"
      sha256 "901cf2ac0c7e793aec5f79690b012091c76d198100a38ae8903300686b35846e"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.10/statping-linux-x64.tar.gz"
      sha256 "31f55d50040cd05a24d978f855bfd726745e9d942dd0fa5001d037877a661cd8"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.10/statping-linux-x32.tar.gz"
      sha256 "1ec0b2616703b5071100223049d48fd03b3564c47eb3ca9548f2553a6dcb81c3"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
