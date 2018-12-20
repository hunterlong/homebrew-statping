class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.32"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.32/statping-osx-x64.tar.gz"
      sha256 "d545680b2dd2c4dcd0576e2b86485f54f995d05b6d59884245bce8b812519eb6"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.32/statping-osx-x32.tar.gz"
      sha256 "5f9846c6f654e718eabd7a87dfa291d9b77acee34124553ad1f7113e0535b7cb"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.32/statping-linux-x64.tar.gz"
      sha256 "fe91d3e8b1c33e43a598abd6a776ee48093b1e1667530a46d9a845432d7cccf5"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.32/statping-linux-x32.tar.gz"
      sha256 "0b72ec28bffdd1144ab873b2a383bb9478504e96355e950b23a5d8d8d7c9d468"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
