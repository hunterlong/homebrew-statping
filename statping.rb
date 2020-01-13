class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.70"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.70/statping-osx-x64.tar.gz"
      sha256 "9c4b109f3cd835869f391cdc498c8d56757e6d6118a8ba586c7556f345df9c7d"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.70/statping-osx-x32.tar.gz"
      sha256 "1850c6a5b78b9acb86cd0f4fb98568624bc3df4569bdc6cc50168b08d58efc10"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.70/statping-linux-x64.tar.gz"
      sha256 "acb2b3f100863a4ce612cb72828005e381a44b2268003d425a56be050e9fdb57"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.70/statping-linux-x32.tar.gz"
      sha256 "6e81aa433a80263ee80e0912ef02ce732092e3d9de5e4c27cac7eafe5354078d"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
