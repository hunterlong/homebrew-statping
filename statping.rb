class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.24"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.24/statping-osx-x64.tar.gz"
      sha256 "3ca29a8d35484344c23bba63cb7b6f8e53ef91e7f25ee8deb5ee82c518a7b633"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.24/statping-osx-x32.tar.gz"
      sha256 "de13846db750a79d202ae9dec40b83b1ce9b6c1d8ced8b019db0322de47701c4"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.24/statping-linux-x64.tar.gz"
      sha256 "f668eb8889abaf554f5781af8c4f29662eb1e2b753cd446b2f4571b8df9eed52"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.24/statping-linux-x32.tar.gz"
      sha256 "edf2e2ce5b76e7018e36b9839f91c2b2ad84778334216cef088447731b5afd2b"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
