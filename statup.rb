class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.33"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.33/statup-osx-x64.tar.gz"
      sha256 "e2d335e40943acb67863c84faa7e5d6998c290131df98629b70f84c69c93f1a1"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.33/statup-osx-x32.tar.gz"
      sha256 "27cc3a0a19122f2d856d89b5e4b67e0958dd2b47b2a26b86ac6ee4c8019a55ca"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.33/statup-linux-x64.tar.gz"
      sha256 "cb28c19a99197db67b857767a21b7d9d383b6baa29df8dc2fef53404dd62a9b0"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.33/statup-linux-x32.tar.gz"
      sha256 "5d59613142761c51f564cc60da70c33181bddeee2ffac7bf91767559c8d2a55e"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
