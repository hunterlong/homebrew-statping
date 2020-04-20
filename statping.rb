class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.30"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.30/statping-darwin-amd64.tar.gz"
      sha256 "9fcc8345f84ec23238f81febc5ef7c9b3c8e9a46577013b69784ec8c69e6b3e8"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.30/statping-darwin-386.tar.gz"
      sha256 "9cd9f0ed4e56461d9a171c30581c9df34380eb4f75d04e4ead5fc573fef22555"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.30/statping-linux-amd64.tar.gz"
      sha256 "dd0d750f612641abb5a0cb7b65c9b10b4e4d5b407bddf627e83b772c9be69f11"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.30/statping-linux-386.tar.gz"
      sha256 "5b8ce8e69305642d14c37c9585c5ea39caad6795809cb4648aba156f95429145"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
