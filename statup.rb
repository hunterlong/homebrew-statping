class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.79.93"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.79.93/statup-osx-x64.tar.gz"
      sha256 "5964f6f6ebde0f01a042e9e9bd3ae28a87fd946af816ab4e13bee45e2609c176"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.79.93/statup-osx-x32.tar.gz"
      sha256 "85fa015d617ed32802e77ddd4effcd0ce21764ec11e1eda8f3c2caa8af244370"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.79.93/statup-linux-x64.tar.gz"
      sha256 "bdca84b81cbc8287725329992077776d43e7468e5c8acf20c9dc35170199ae7c"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.79.93/statup-linux-x32.tar.gz"
      sha256 "43aae65e988a9844deccb29e1d77f4be5f61a604553996eca683fbc0ad72966d"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
