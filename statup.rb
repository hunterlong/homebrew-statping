class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.79.2"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.79.2/statup-osx-x64.tar.gz"
      sha256 "a79883f0e3a1dc6d5820f4354cbd4db94cdec17f29756a7128daaa05c78b7fa6"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.79.2/statup-osx-x32.tar.gz"
      sha256 "06db6892338718778aeb2f04720ecea6b89d909e9564e5f3b9de4162f74385b3"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.79.2/statup-linux-x64.tar.gz"
      sha256 "b81f5383600589c0333276883008bb496e11ccab4a215eb5e1224a3886f7f9fc"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.79.2/statup-linux-x32.tar.gz"
      sha256 "c23a9bea3b043c8178e91089335b060a8b3eb2fab9837a404b57ed995c2585d5"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
