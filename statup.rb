class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.75"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.75/statup-osx-x64.tar.gz"
      sha256 "62010f1b6c6c3eece03e9a2d78ea9b7216c84c6c710fecb13c39052160beb1a6"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.75/statup-osx-x32.tar.gz"
      sha256 "551297155736a93e0e5a0f5ab2b9db08ff88f8ce9e67c91ec3e09d858012e86d"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.75/statup-linux-x64.tar.gz"
      sha256 "4026f9e0c30cc864e76ce9ff74c55fcabe300ed0eace48137e085c522b4e27da"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.75/statup-linux-x32.tar.gz"
      sha256 "113524b9c1d6f237a2cfb10ea827ae817f9ccb01daa3c3faca30c4aacb83af22"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
