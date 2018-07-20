class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.34"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.34/statup-osx-x64.tar.gz"
      sha256 "b522ec820f94877ab0204b77115bb9d2056e08494191ee62a459aa9935b66226"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.34/statup-osx-x32.tar.gz"
      sha256 "4c1618711edc8c4458922016b7e0bc35c8b1e1feadbd94d6341e42d4c0e2e0dd"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.34/statup-linux-x64.tar.gz"
      sha256 "824dcab83a98f3b543b180df3d744d83f9da16e7903371e06368f79cb329fa1a"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.34/statup-linux-x32.tar.gz"
      sha256 "69c0abf79b649d9b4ade6cb51caf0e9e93320347d8a6f163b72652964247f588"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
