class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.43"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.43/statping-osx-x64.tar.gz"
      sha256 "691eec4eb7d2256a7cdc8b25460adc79e237427ebaacab86a8d65deb7ae815a5"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.43/statping-osx-x32.tar.gz"
      sha256 "b931b682dddbac372c909ddbbd0ffc097d840b2ac9d946c252cedb284aa1227b"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.43/statping-linux-x64.tar.gz"
      sha256 "a90c6151d382814d7500731023a8828d9cc88ad6a1eb643ffef3ae86f9a00b27"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.43/statping-linux-x32.tar.gz"
      sha256 "fc7d671c7f57a9f8af3238fd0adf7046e5cb6d0ec576fb895402ac79187c5cb9"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
