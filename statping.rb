class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.68"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.68/statping-osx-x64.tar.gz"
      sha256 "eae42728e2384260974f2af6fb7371410f0855ff42fe5fd2a027ff255512ec6a"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.68/statping-osx-x32.tar.gz"
      sha256 "035bc6bb02f7249bf2129d191786e3125b5f047eca88172eb939997834b5827d"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.68/statping-linux-x64.tar.gz"
      sha256 "f036fc4dcc887a44eaed6a5ce7ac4a31e0a7e3546fd98f4d45111aa2ef66221a"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.68/statping-linux-x32.tar.gz"
      sha256 "3167739c3a0026aa80bda9a06deccb315ca0f7719bd677fcffd6ff4d88528612"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
