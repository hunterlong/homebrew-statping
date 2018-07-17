class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.30"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.30/statup-osx-x64.tar.gz"
      sha256 "b12f91b48641807f7a918959452ebf20e667d7c63f4ba51f90000b7810e151e6"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.30/statup-osx-x32.tar.gz"
      sha256 "20ce3a709bec00db2fac5fb9567c90c17abd4c8ff6cf1f84a5a20bfa3c848dfe"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.30/statup-linux-x64.tar.gz"
      sha256 "edd6d81016b3283329cb2ea8964d070dd754c25f22f6b444560bcc9905ec25e2"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.30/statup-linux-x32.tar.gz"
      sha256 "9c2f34a193152be84a06d18deb43982f6dffc2ccf6b68ed75277905d53928de3"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
