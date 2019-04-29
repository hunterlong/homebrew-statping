class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.56"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.56/statping-osx-x64.tar.gz"
      sha256 "99fc0649aabd59856cfa107a14cd084b891dd5b0ca238abdb7244814e96479d8"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.56/statping-osx-x32.tar.gz"
      sha256 "abb5123635458d66d3403f6ac52b60f4b7102af668cc346ec164286e7820fc47"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.56/statping-linux-x64.tar.gz"
      sha256 "b32c48d6aceed8ff06cb81be441d287b8380566987dd6a3a0173fb32410ed93a"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.56/statping-linux-x32.tar.gz"
      sha256 "a04eb577179957bf7b6b0348f57603e9584ad3a3557e6651d3276dfa7dc04cd9"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
