class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.36"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.36/statup-osx-x64.tar.gz"
      sha256 "d6e2ede08891cf0e5b9b6471707fe93ae7b8e487475dc227275176ef4a2c6f6b"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.36/statup-osx-x32.tar.gz"
      sha256 "1a221c8608a5b390898795e5b0baa5982eed39e910f3b63013b40c73a123e348"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.36/statup-linux-x64.tar.gz"
      sha256 "64ec313a490e69ad33600753608d0bfd751147a8d0be6cf58100fc86dc4088ca"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.36/statup-linux-x32.tar.gz"
      sha256 "9685812babdf1bfb0b5f83ee194c4974b66e85f41f3f54a5b80cb2a772a9fff2"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
