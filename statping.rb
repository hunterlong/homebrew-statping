class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.5"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.5/statping-osx-x64.tar.gz"
      sha256 "96100c480b3b8dcca1c61842927d7f23248a55cfa981f87ab3c6d5e8365d4cf0"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.5/statping-osx-x32.tar.gz"
      sha256 "948d0552171df1fd772d1b40be362ec19ca7071c1c8f7108841a1a34665c8e01"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.5/statping-linux-x64.tar.gz"
      sha256 "3c2da9e72722cc0e95a9ba56fa26335820c3795559c41875aff5d957bf5744b2"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.5/statping-linux-x32.tar.gz"
      sha256 "0a1207d5420c7454891fb1013c31ae83c41f031c1dbe014bd4d33762c7956425"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
