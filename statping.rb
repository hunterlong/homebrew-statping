class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.44"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.44/statping-osx-x64.tar.gz"
      sha256 "7ea9ba49c1fe74fc5a0566da0ea0a2aa789052cd5685249f94dad9a671f51232"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.44/statping-osx-x32.tar.gz"
      sha256 "3ae8480096b089cc116fc026288e7ef2be1295b3837fa231bd26dc25431a482c"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.44/statping-linux-x64.tar.gz"
      sha256 "87a2d5e5b23b0d7fba66d59fac1a7e10e2df50e38533445dc7df44d14c2b7c85"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.44/statping-linux-x32.tar.gz"
      sha256 "2a189408117fc9368660ccd6750a4bd352b136f73a2476c3197395dd9a6bf345"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
