class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.46"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.46/statping-osx-x64.tar.gz"
      sha256 "037ca10fb70e2c933de84e34eb8d58a3abd885fb06060d32702e6f8403eef14a"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.46/statping-osx-x32.tar.gz"
      sha256 "44a2947a7129349a8fe4cd86948678e77a7e8561f91ef8d6dcb2333b4dafa8ee"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.46/statping-linux-x64.tar.gz"
      sha256 "0c13f68c3b868b36ea56034c56c4f671a3c2d8ab3fc6b6512ad2f7c53b439d19"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.46/statping-linux-x32.tar.gz"
      sha256 "edcaa7a85dc5ab0587a22b329cce213b140d533aecc52f102e5754e24e2ee095"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
