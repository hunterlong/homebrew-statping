class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.49"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.49/statping-osx-x64.tar.gz"
      sha256 "92544e6d810a9b483ef6b39176b7a04b12519d0503bbf27ae6daeff8cca128da"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.49/statping-osx-x32.tar.gz"
      sha256 "911630c9b615939f9ced65ed6935c043ef5a523738af2425e5346c0a3ee98d89"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.49/statping-linux-x64.tar.gz"
      sha256 "ee6ce762239021504f8bcd88e909227e737079c5792702f985b2923df7e2fc38"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.49/statping-linux-x32.tar.gz"
      sha256 "d631883758a5d609645b0da6f16e6daa9beba8f6baf0ea87bde69be266dc0fa6"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
