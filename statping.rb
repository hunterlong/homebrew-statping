class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.23"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.23/statping-osx-x64.tar.gz"
      sha256 "640e6e381f8cab6430d213673c17d44a533bc604ccc46a96cb9be5740fc18d9b"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.23/statping-osx-x32.tar.gz"
      sha256 "78c42157c554ff65dfc19ca83ce8aee4419e0884126cc1787d80b1e49e7e2602"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.23/statping-linux-x64.tar.gz"
      sha256 "19c4ddc99c1deee0a49ad6f3b3e9d6fa3989e7331ace0cb5869a8ae351f9bbf0"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.23/statping-linux-x32.tar.gz"
      sha256 "df0df57b88aae0e7dcd6701a19bf4bc184d4e0a033aa7878064d4731b24ae887"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
