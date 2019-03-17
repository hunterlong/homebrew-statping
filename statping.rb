class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.52"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.52/statping-osx-x64.tar.gz"
      sha256 "482a7319c4fb526896c272478083ecdabc20753bef7b8844e3351218222b65b4"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.52/statping-osx-x32.tar.gz"
      sha256 "3a9b1628ea1641dc6d20cd9aaedfda3f81a34153509af5f019ebd23df8195328"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.52/statping-linux-x64.tar.gz"
      sha256 "a53d11094f145d2be2d21d2f5f387214372ff6c74810df869c0146c8fb96fc05"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.52/statping-linux-x32.tar.gz"
      sha256 "4e5e165c320f180fb8ee7135006ff8708ef2505ec572c57bd47eb5dd1ff88eaa"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
