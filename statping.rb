class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.48"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.48/statping-osx-x64.tar.gz"
      sha256 "4995011f2ccb98cf437a42594a71f4748c1cc4f39e3318182fc85402115f25c1"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.48/statping-osx-x32.tar.gz"
      sha256 "7c8be057ec7ec33c2bd92809ed2c15aba35ca802fef7077fb3dd3fb620eabd4e"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.48/statping-linux-x64.tar.gz"
      sha256 "8151aa26090cf05ac823eaebd1102acdc153baf150d6182bf2e62b317a96b274"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.48/statping-linux-x32.tar.gz"
      sha256 "488296365987801b3cd8b489deaa12494600c948584798dd0a215d1b0d2d2f56"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
