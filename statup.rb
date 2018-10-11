class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.74"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.74/statup-osx-x64.tar.gz"
      sha256 "bd462f55e6d16f64d6b85399c3a7324b959b02287bae0f42d14d997ad821ddf4"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.74/statup-osx-x32.tar.gz"
      sha256 "caf8a4615935918278706573bf5481fb86edba44d6933d66ece5284838d7fd4a"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.74/statup-linux-x64.tar.gz"
      sha256 "fd8f95cb32eb6f41a208d0907a90bd94c9fe079e78ad2f99a6a3fdeada8cd2ec"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.74/statup-linux-x32.tar.gz"
      sha256 "91cf65ed1258e07f79d36890281326dbe7918ac7813b026653ab2c10de2b7b3d"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
