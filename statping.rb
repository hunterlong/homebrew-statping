class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.5"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.5/statping-osx-x64.tar.gz"
      sha256 "9fcc60303975c2c8f4a0405e238e579001ca16e38a7a7c860710229b0bada348"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.5/statping-osx-x32.tar.gz"
      sha256 "ac9db3a6f03770c049c89fbef09e83ecf2270c90814565bf90a93f34b1e9f339"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.5/statping-linux-x64.tar.gz"
      sha256 "30084cd159fe29c4ea96aba13122353df404046c71ac01123d27e18b54c18a0e"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.5/statping-linux-x32.tar.gz"
      sha256 "66f4d83874174d7921f00d6b9fd8f019d721d0b74fb7af2c5a23a5e952853942"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
