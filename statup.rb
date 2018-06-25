class Statup < Formula
  homepage 'https://statup.io'
  desc "An easy to use Status Page for your websites and applications."
  homepage "https://github.com/hunterlong/statup"
  version "0.241"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.241/statup-osx-x64.tar.gz"
      sha256 "c47417b0159a856eac6d9192b73ac073e77677ee2997513981ddea6f256a0b5d"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.241/statup-osx-x32.tar.gz"
      sha256 "24757b6d2bed1682d5620cf9af97e46ca83a70f5fdbb5634f4233257af61bfb3"
    end
  elsif OS.linux?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hunterlong/statup/releases/download/v0.241/statup-linux-x64.tar.gz"
        sha256 "a83c0bca33b8a765988456957d34edc88544cc9eb92a29e2fa6103f89563ea85"
      else
        url "https://github.com/hunterlong/statup/releases/download/v0.241/statup-linux-x32.tar.gz"
        sha256 "c98f417f43c4bc647955f8855a95ced186e50864a20fd84eb3dcf36ea3a26abc"
      end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end

end
