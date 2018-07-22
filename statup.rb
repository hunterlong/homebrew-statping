class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.35"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.35/statup-osx-x64.tar.gz"
      sha256 "f3d72eef68d4310a7e17ca190967f0034ee571e2bca2ad8fb70f219df6a5f360"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.35/statup-osx-x32.tar.gz"
      sha256 "7de5d1a87596bf51141ec1dd1be3ecae000099d19949310a34d5761572bd942c"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.35/statup-linux-x64.tar.gz"
      sha256 "2fd5f7cd0d285b9e39df40f98675645f5feb20357c636fea2870c5340b59b637"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.35/statup-linux-x32.tar.gz"
      sha256 "f0c3e6ed3c3ce41d74f30e516241ee1e5c8f77d0f658f8af8247e2a1374d3a91"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
