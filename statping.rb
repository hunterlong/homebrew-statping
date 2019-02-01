class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.43"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.43/statping-osx-x64.tar.gz"
      sha256 "25c89290aaeb8404d93946fea9e6edfaf42e43dbe153aca902e16895c5e6b160"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.43/statping-osx-x32.tar.gz"
      sha256 "406d2d6fd3fed043317a5be601ab7fe09c690371e63b353948a682dd7bea4802"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.43/statping-linux-x64.tar.gz"
      sha256 "96f108a64f0c910260d664fd2a25b75c4ffaa396290b80464b776a1fa6844e17"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.43/statping-linux-x32.tar.gz"
      sha256 "3f16662c4ef3f26ae6926b484c0a1a5b4b459a2257bca107566ad00daf1f9a50"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
