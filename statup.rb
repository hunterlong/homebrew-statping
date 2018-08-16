class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.42"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.42/statup-osx-x64.tar.gz"
      sha256 "22625178e9468d67bb03e7cd2f823f89b4826edbf44de6afe01df950d740e70e"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.42/statup-osx-x32.tar.gz"
      sha256 "ba47400019ed261f97c22a31bb99e4e093c2e25da08bb30fdefc1d43fbaa301d"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.42/statup-linux-x64.tar.gz"
      sha256 "6ccf306ea23108ecd23503107493cbea97428237fc0a08beaf8529756794198f"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.42/statup-linux-x32.tar.gz"
      sha256 "25b5925c3981d33b63ed2507524ca5b09184cafa801b17f3551dbdcdcbc90dc0"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
