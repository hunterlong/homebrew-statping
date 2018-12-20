class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.32"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.32/statping-osx-x64.tar.gz"
      sha256 "6c9f7649f8dbe2dc5ca8d288a33d277b1b73b937d57f18ccb7a2363c97af7595"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.32/statping-osx-x32.tar.gz"
      sha256 "aeb367f3382a1c98158e59c85c71b9ba8e036becbc58177c3c6d16995f347728"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.32/statping-linux-x64.tar.gz"
      sha256 "8f509428c1617b36eddf8e76012e9f7c14db7ff8111265ce36526e78a178ecdf"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.32/statping-linux-x32.tar.gz"
      sha256 "184a698b5bfaf70f188eb24549d5ae219940b3e9c8e9b26354f69430a51c613c"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
