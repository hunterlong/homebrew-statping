class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.40"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.40/statping-osx-x64.tar.gz"
      sha256 "033db74a3226830e270c213521324bafe989215473848ee0c5908edbcc9dbd8c"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.40/statping-osx-x32.tar.gz"
      sha256 "523736102e701122ff95c4a28d749fef60bdc9bcdfc7f2b5a15fc58c32b29d85"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.40/statping-linux-x64.tar.gz"
      sha256 "3b5a2452ccdc9dca9901df92a2f610d2e44a5846524429026f25f63372a5f2e9"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.40/statping-linux-x32.tar.gz"
      sha256 "4aed7c4a8c77ab624d2963863b89a4e55094443c455fe16114312444ba33985c"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
