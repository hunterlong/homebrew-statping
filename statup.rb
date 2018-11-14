class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.79.8"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.79.8/statup-osx-x64.tar.gz"
      sha256 "b66e41a3c93af1128f00f1656696606a054f937216a50b838a3b94b74962122a"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.79.8/statup-osx-x32.tar.gz"
      sha256 "59315c844fa859903bdb050f7a34dca18e387e8853cdc4060a4be6eea602b5cf"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.79.8/statup-linux-x64.tar.gz"
      sha256 "cb3e3512c67833c37e6e9dc486d95f6a28a8e92813ea1dc9ee51aef15c150ee3"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.79.8/statup-linux-x32.tar.gz"
      sha256 "ddfd6858814e3d1a1927e960fa867e70e7e4c67312e082b1e621141e577e9b2d"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
