class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.53"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.53/statping-osx-x64.tar.gz"
      sha256 "cbb8d798679bceaf8c9abe3c676fd05959b27a4f15f96ec72558fd994a624bc2"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.53/statping-osx-x32.tar.gz"
      sha256 "af3e85d80c998a9ec18fd92bbdaea88f47f0be0a0eb3980d4bda11f3cde283a0"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.53/statping-linux-x64.tar.gz"
      sha256 "5cde24cf8d7de84248c5aac17998d57479168c11ac703706902591551ce00674"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.53/statping-linux-x32.tar.gz"
      sha256 "e1b29031a6481f06f9dad53fba96f6c329d9fbfbe4a5bcde7e67145c0aaabc4f"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
