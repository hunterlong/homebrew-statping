class Statup < Formula
  homepage 'https://statup.io'
  desc "An easy to use Status Page for your websites and applications."
  homepage "https://github.com/hunterlong/statup"
  version "v0.28.6"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.28.6/statup-osx-x64.tar.gz"
      sha256 "7c287f0bf10c8c5968db0cb3db07cea04272b75450b9e0c3c676ead6ca975b3e"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.28.6/statup-osx-x32.tar.gz"
      sha256 "6230fd7df6407216282d6bc63e717db64ed16698ea7dedb094d25cf60fd6bb58"
    end
  elsif OS.linux?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hunterlong/statup/releases/download/v0.28.6/statup-linux-x64.tar.gz"
        sha256 "6bf9df48c16db1e80d315b6a63393e36573ea5e3859d9ada01362af52cf9bf1c"
      else
        url "https://github.com/hunterlong/statup/releases/download/v0.28.6/statup-linux-x32.tar.gz"
        sha256 "f3338901d7aaeb7d55d1ab5bf72f6b8200d59d8c8cf90596c0b8e3171fb75490"
      end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end

end
