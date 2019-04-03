class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.54"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.54/statping-osx-x64.tar.gz"
      sha256 "834d8c7740609ea13f832b1211ca27bab1e6a3ac4245b89bc9a7783eadc558dd"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.54/statping-osx-x32.tar.gz"
      sha256 "06abe8ac6c01eaefa214dff78dc70df3a82052d63dd167b48eb9e859ea7da0e3"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.54/statping-linux-x64.tar.gz"
      sha256 "0772c7df985b515339c76fe969b6d4a3519742ae5b3e3987a7545c14c4f73db6"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.54/statping-linux-x32.tar.gz"
      sha256 "8b659e39796ed7bd373d2a037770b2500e2ffa8fe1740c627b0a6b98e2e7f1ca"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
