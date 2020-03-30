class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.20"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.20/statping-osx-x64.tar.gz"
      sha256 "d23289232d8e61d592e585908e49fc018082553e1d680ba38be51963b4c5fa2a"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.20/statping-osx-x32.tar.gz"
      sha256 "2c522921785f40590820b605ec4043e4ab469a966c5f151a98ef3cba458e93f3"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.20/statping-linux-x64.tar.gz"
      sha256 "bb5a238d8bbecbce4a5c9233f503460a0fc637e927cfaa1a2e1de535b9350acb"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.20/statping-linux-x32.tar.gz"
      sha256 "0ac68ef06554e8b12558f5ea399a76c60c467acfd780bacc87c392b31090a8d5"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
