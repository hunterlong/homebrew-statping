class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.15"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.15/statping-osx-x64.tar.gz"
      sha256 "e37f4578c0cf293197b7b6d13ed372aa7d2b3585174ca5ca9057900a3c72a0b4"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.15/statping-osx-x32.tar.gz"
      sha256 "960199bd981f95999a002b7d2777ad50ec2632650730ce936fcf6b317a775a5a"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.15/statping-linux-x64.tar.gz"
      sha256 "d042c6367d7c4711cecbeadb2201d7e6bc370abae53108a3fa661d068fa9d6bf"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.15/statping-linux-x32.tar.gz"
      sha256 "1ead2b18104da8fd5a28018f544be832e9b12a97f4f9ef8e73e55c19e43ce8cf"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
