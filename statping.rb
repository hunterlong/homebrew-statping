class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.69"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.69/statping-osx-x64.tar.gz"
      sha256 "09ab83457c6e910924626117013f445cdbcf967741c7f72394bd730101106349"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.69/statping-osx-x32.tar.gz"
      sha256 "943ab865d95706639bd332764f809e1e126bd7c06c349adbb2e32779a699956a"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.69/statping-linux-x64.tar.gz"
      sha256 "2ad4fa076fd2ebfba1b83fc2a7f79241e0dea8053a0a29a4711df0b24f14a263"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.69/statping-linux-x32.tar.gz"
      sha256 "17612d844aab2fa3c5f7133983f5c453961669d0416d5c4bf200436c98eeb349"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
