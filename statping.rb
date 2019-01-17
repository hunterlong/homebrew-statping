class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.38"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.38/statping-osx-x64.tar.gz"
      sha256 "74c857ee946dd017cd4544e47cd0f43b8d75c2a96612f20cb9b565fe40bcfd4c"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.38/statping-osx-x32.tar.gz"
      sha256 "76c800ffc4bb59f08ec3b7d5696407ba70e73bca1a0b33fc1363bc425cc17b04"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.38/statping-linux-x64.tar.gz"
      sha256 "b6ece7f374863a54a85907126aab48f48e6e7132f37f80bf022b40fc235756e5"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.38/statping-linux-x32.tar.gz"
      sha256 "009c9191f289fc2421231a2eda648bfa4002ff637ea6e710a319dd3426a6d641"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
