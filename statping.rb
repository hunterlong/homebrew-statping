class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.55"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.55/statping-osx-x64.tar.gz"
      sha256 "4ae5332478b291853bf9660cd127194031df16872e6f893b55db592ffadd5c2d"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.55/statping-osx-x32.tar.gz"
      sha256 "65208e94ca547af86ab2a2337324a642aba8f2685e2fcb05541e04655bdeeb45"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.55/statping-linux-x64.tar.gz"
      sha256 "6983018996152b2ef5cd74f3745150e1f104fe4c3a4bb8f669be5e437461dddc"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.55/statping-linux-x32.tar.gz"
      sha256 "b566e60ffec48f546b631ebc22c7a23d47aa048778b158b474db6c7979ec3a01"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
