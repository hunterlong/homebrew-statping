class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.59"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.59/statping-osx-x64.tar.gz"
      sha256 "52f1a0056c5c62694ff528a2222cdfbd47904e9066eb02073dbffd0fcf654f54"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.59/statping-osx-x32.tar.gz"
      sha256 "8a9e150e0e9c054ea58f0899bfd00de85e15642a6d8d316770abe50793b42454"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.59/statping-linux-x64.tar.gz"
      sha256 "ea3092bd0d8aa9600e3c115b3a50ffa0c644a37a3585e4f49d291cd581d65e5a"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.59/statping-linux-x32.tar.gz"
      sha256 "fb43c4e58fda2564488c30afd18ee1b82552e26ed67f95ac3f8133fd147d7dcd"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
