class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.41"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.41/statping-osx-x64.tar.gz"
      sha256 "e1daaa91cf18f6db6ced4e31cfaabf7f17a8856374e935491a258a351cd22e52"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.41/statping-osx-x32.tar.gz"
      sha256 "5e6c9f469aebe545346be64c0054f098d21dab6ffd0bc8329773bc280982a44e"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.41/statping-linux-x64.tar.gz"
      sha256 "dda987d80beb54440edaa2a61cdf1d62e5b9ba8cc78e1df50065297d381b7054"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.41/statping-linux-x32.tar.gz"
      sha256 "8721de2f52f3f50f5564ec0ecde80a6efc3b6620937cf25bdc360545454e10d6"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
