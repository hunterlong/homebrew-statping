class Statup < Formula
  homepage 'https://statup.io'
  desc "An easy to use Status Page for your websites and applications."
  homepage "https://github.com/hunterlong/statup"
  version "0.23"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/0.23/statup-osx-x64.tar.gz"
      sha256 "126a8d55ce165e3f6709f7714b492dda6c36dc35cdbf629bdba36ac3b0ac7c7b"
    else
      url "https://github.com/hunterlong/statup/releases/download/0.23/statup-osx-x32.tar.gz"
      sha256 "443a980bd846c3761adb004be6d06cf7d20b1581f3e4c5025ad8102c1b096834"
    end
  elsif OS.linux?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hunterlong/statup/releases/download/0.23/statup-linux-x64.tar.gz"
        sha256 "db52d9dee511ac1c36990b82ec72c12eddbc7c6ab6756a9df73376ffd9ea4cf8"
      else
        url "https://github.com/hunterlong/statup/releases/download/0.23/statup-linux-x32.tar.gz"
        sha256 "4ce57db64228bfda84e6f7e7ed9e0c351df1327e0bc774325acf3443b3dee159"
      end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end

end
