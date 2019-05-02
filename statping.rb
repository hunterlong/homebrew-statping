class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.57"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.57/statping-osx-x64.tar.gz"
      sha256 "e1c67c73a9b0fb300b8f09f58a196b6423cc3559c5f08a90f1f48dae2aa7cc5e"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.57/statping-osx-x32.tar.gz"
      sha256 "113e41eb66f1f13948b76d78c1944148d3be3232654da7beaa1d5229aa5ab959"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.57/statping-linux-x64.tar.gz"
      sha256 "793f2407851b44711a5b001e506b4f4746daef10a566a31f648b7d62c2e290fe"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.57/statping-linux-x32.tar.gz"
      sha256 "00a1c7ff6733e7494e2cb392e52722926d3ddf8db0403431ffd231733622529a"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
