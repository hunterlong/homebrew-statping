class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.65"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.65/statping-osx-x64.tar.gz"
      sha256 "48fa43cf9862df7f147af6ec0693df53945d516a92b9aa1d221350c76bc717c6"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.65/statping-osx-x32.tar.gz"
      sha256 "6980289e23a4d85710d81809023e7045c21a704dc558bf5ccd604ff57b15b5c5"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.65/statping-linux-x64.tar.gz"
      sha256 "7dd21159e232ef33ff49de292f5ad8ca1081bf2fc2e07d5c3be7cb492f23eb33"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.65/statping-linux-x32.tar.gz"
      sha256 "f3c19348fac70611d19f5ed6b731448e13422aed23ae01503d0da0f94ea5c263"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
