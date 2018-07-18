class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.31"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.31/statup-osx-x64.tar.gz"
      sha256 "aeca7f0f70f604d853b0f0f70d9a31d6ee72eba387dd0f0c220313365df7ad38"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.31/statup-osx-x32.tar.gz"
      sha256 "ab3ffef2bcc0ac976bc5778f79d6c13ec75c166a658fc490c4045e4a69074532"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.31/statup-linux-x64.tar.gz"
      sha256 "d80b2868c5dd3cc63ea1c7817153ee4c556d891fc1971cdf71ca22f5e9405c74"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.31/statup-linux-x32.tar.gz"
      sha256 "6a1e4d5c02c943a4786b1669f6916b875e750e9b6360199396c8d7672b77cd02"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
