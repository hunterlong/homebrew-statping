class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.45"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.45/statping-osx-x64.tar.gz"
      sha256 "1d85ae688349b58bbf8cd404950882edcfea27a484cdeffe984534b5158107ae"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.45/statping-osx-x32.tar.gz"
      sha256 "c87bfb46c0bbc89f03f2641610dda2305b5aa55e9cf1a1304d0e45bc518b1c1c"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.45/statping-linux-x64.tar.gz"
      sha256 "40c79e33e54f9dbec90e4d9e6568e2416ef98db655c287cd3153fe56f81f1fb9"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.45/statping-linux-x32.tar.gz"
      sha256 "8c49d28a42c50f96035a0795e79120e6a2082aa3de281dff15ba021fdf67d3c1"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
