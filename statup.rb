class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.79.91"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.79.91/statup-osx-x64.tar.gz"
      sha256 "bc35510352cfb27e9bbaa6783b97117e37bf6ca58b3217266c46b5de89bf3567"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.79.91/statup-osx-x32.tar.gz"
      sha256 "86f4a442d5292f063bb7cbd5c270da7006eaffb5ed091dd9f225fa8f6683968d"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.79.91/statup-linux-x64.tar.gz"
      sha256 "6eb0d115c0d647e717bc5d1591ec140d9251768f021d36fc20aa88659d1df032"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.79.91/statup-linux-x32.tar.gz"
      sha256 "e92fc7afd014a1d3280d3e152cf30da93c6414128e810b5c27fedb6c3438c325"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
