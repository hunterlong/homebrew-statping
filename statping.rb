class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.18"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.18/statping-osx-x64.tar.gz"
      sha256 "63b761aa6396a4485d63f2b4b378679b89318453acfec9ccab779da056906eea"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.18/statping-osx-x32.tar.gz"
      sha256 "f4a273bc06a9cf3852f32b9b9a420d6fa938d6cf3f89b1e45ff9cf3021c9d45d"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.18/statping-linux-x64.tar.gz"
      sha256 "ad9cd471fc0411e61272988557387fcc26af2b124bdfd8763c1d65ee2fb2c3f7"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.18/statping-linux-x32.tar.gz"
      sha256 "ac00c1fe9bfa2548af5aef88ff179b0f10fd550885480a0b47e1b0f006a75e32"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
