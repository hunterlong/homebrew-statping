class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.22"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.22/statping-osx-x64.tar.gz"
      sha256 "1ba3e54c1ff28dc57e16f7dad3b8f722f95fdd8e66733f842a277bbedacd37b6"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.22/statping-osx-x32.tar.gz"
      sha256 "3facd2e9fd0a7cc39ed958753b1ca99bfafc04249bd17e3739a9282a4fe51cef"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.22/statping-linux-x64.tar.gz"
      sha256 "fee30d8991d0dbfd31edd986bd4e0d8cb0c23bd0eb030bd28a2796804c0501f7"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.22/statping-linux-x32.tar.gz"
      sha256 "fa12973a8c9fa948fdd6ab8c5039bf8af2e1bbbb3bdaccc4c5566717f2cb2ff0"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
