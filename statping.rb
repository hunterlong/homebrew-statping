class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.16"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.16/statping-osx-x64.tar.gz"
      sha256 "3eded8125a384acd9cd8646a3b2d3dc2b6148b47a688cc8a6e68d47eb094d9d0"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.16/statping-osx-x32.tar.gz"
      sha256 "abc95356adaf1735032c4156b175c46729699cccf4b915454709f721eebfa695"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.16/statping-linux-x64.tar.gz"
      sha256 "6021826fb32b6e94d864c31cc7a476cda4d05bb5a4f5949197daa85b4c8b7a1d"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.16/statping-linux-x32.tar.gz"
      sha256 "8c01f87ae2d0c983cddd228651398adadb10185fc09b99d7f458e7d4084dd788"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
