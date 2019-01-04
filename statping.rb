class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.35"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.35/statping-osx-x64.tar.gz"
      sha256 "1934d5acfb191c281dc4481fa5c55a70c73e9000814f238bf82b45095fd7e904"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.35/statping-osx-x32.tar.gz"
      sha256 "569522e5924cbe37f3c3b544120abef86b5b0f63e0be5bb812bd688416b116c4"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.35/statping-linux-x64.tar.gz"
      sha256 "849a028a4a3e5932bd1f4f62f276d63836b644bae3b5d4dc135b29d30957f560"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.35/statping-linux-x32.tar.gz"
      sha256 "09501f9a0848470f648dd0112650b2ddf43fd0e64140f80831ac66aa634f83e9"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
