class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.40"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.40/statping-osx-x64.tar.gz"
      sha256 "037851a2c1fd4ec89ff5e61fe80819c74af593f7b097ef556fe0304bc655db09"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.40/statping-osx-x32.tar.gz"
      sha256 "d65bd75e944afdcb02977cccbc715210327b69e8646eecab01446b4d0cbdab0d"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.40/statping-linux-x64.tar.gz"
      sha256 "c4496ae303c76695418f029e12909692723e60334e96a21fb95a3f7802682bb6"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.40/statping-linux-x32.tar.gz"
      sha256 "c2aa5c738a6967c8a0fa38e036ee31b0d6921a8031f6828ad8f85810360245cb"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
