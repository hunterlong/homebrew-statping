class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.36"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.36/statping-osx-x64.tar.gz"
      sha256 "555f3aeda691fc1e3f332e4d8416b3486b664cabf5731ddd80af51b5c39c54bb"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.36/statping-osx-x32.tar.gz"
      sha256 "68a735dee98d2ea553a7a08252bc86624f564d4e1198cbacc93395ec2d578b47"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.36/statping-linux-x64.tar.gz"
      sha256 "57317092308add35f9a04117350cc96fad720a006dd0cfa64691432deecb5b08"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.36/statping-linux-x32.tar.gz"
      sha256 "faf7f73d1a5d9a197e18058e9963da79fdbe840c61e4517920fd8a76e9170f29"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
