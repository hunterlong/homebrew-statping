class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.63"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.63/statping-osx-x64.tar.gz"
      sha256 "9689db9109e9ddd0c08bf6501ddd2ad5282c8d31a9e1992c4e11defc26d5025e"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.63/statping-osx-x32.tar.gz"
      sha256 "9a4654cbe62f996f842f1de6d5d695de3b9f4b0d418a8c0c8f3fca5d5881aa42"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.63/statping-linux-x64.tar.gz"
      sha256 "0b3242055a70d2ecb571fb8b27eec8db68e96d99edf59faa3a68ff07d2418c44"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.63/statping-linux-x32.tar.gz"
      sha256 "0e69e54043a787b2d48327d5e396362d355752a0fc014931739503a5e1d8a8e0"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
