class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.51"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.51/statping-osx-x64.tar.gz"
      sha256 "cb10cbd6d2250bb464b7d51ae28c7c2eed80dab9ab4b83eddfb7ecb75fc60d2b"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.51/statping-osx-x32.tar.gz"
      sha256 "e4030f4bd80402b8ec6b29908418813ae1afa98f9ce9150bfc658d6d4bb6d420"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.51/statping-linux-x64.tar.gz"
      sha256 "fe61d40d14667304bc138918ad7c1c08e34de51a32a96c479845ba323d45bd57"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.51/statping-linux-x32.tar.gz"
      sha256 "352434f86ae5dca84fc57a7c1febc752f6d30bcf1cd1d6466aa1c8eab5638634"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
