class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.79.94"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.79.94/statup-osx-x64.tar.gz"
      sha256 "400b576fec14f9e17e420544b8f029e3497af5b010a3916d064988e166c0730c"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.79.94/statup-osx-x32.tar.gz"
      sha256 "c4b6499cc33f897ae0ece4686fd80e1dd4ac80010d2d5f9217f8b7d34191de0f"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.79.94/statup-linux-x64.tar.gz"
      sha256 "82eecda5ea3a9f7ea9abaaa176fd3b497f1a8336377171349a94be2ab3201c16"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.79.94/statup-linux-x32.tar.gz"
      sha256 "aad7cb3c4c7ad4c7270820909621a5f7b5a1c57606fb36eb3f699947a77b0ccb"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
