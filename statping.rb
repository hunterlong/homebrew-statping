class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.19"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.19/statping-osx-x64.tar.gz"
      sha256 "3257b70fe920354635acc4239e5a5e9c51710f319a7d4895d42db46ffb2d440a"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.19/statping-osx-x32.tar.gz"
      sha256 "e6b53034efc656af188f666709a70c001fc434e59821c57165ad621f9880d053"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.19/statping-linux-x64.tar.gz"
      sha256 "30896490956edf29574d63ffff4e08482921585bc888f0f0e192d5d8a61a6650"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.19/statping-linux-x32.tar.gz"
      sha256 "6add57eddc099b5e61b140bbebe0b11e11d08817c740ab192f1c529f96dece57"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
