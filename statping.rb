class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.27"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.27/statping-darwin-amd64.tar.gz"
      sha256 "e22c7e3533c8a7bfec81cba0ccc71230511d4ea4b5b36366155e0ae2b9f386df"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.27/statping-darwin-386.tar.gz"
      sha256 "fefd75c15ac4642b9fc8a02fd3d71eb2039d35552a86ddc12194a39a51a06f80"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.27/statping-linux-amd64.tar.gz"
      sha256 "16472652e738510f1478980896e68ece55e988df7a5684957bb65d04a4f33469"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.27/statping-linux-386.tar.gz"
      sha256 "96400b2d6d2d48acbf702642c4542969cbd1cd49634dd9511bc15b3560037411"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
