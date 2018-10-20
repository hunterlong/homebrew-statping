class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.77"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.77/statup-osx-x64.tar.gz"
      sha256 "279949f0ca2466101226e197b1f2fa85b480e6dc92f1e980eab2063a32d062fa"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.77/statup-osx-x32.tar.gz"
      sha256 "270ae15bfa7da4944d2795d750a516e35bf4576eb4a196d5c85bee871d83f383"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.77/statup-linux-x64.tar.gz"
      sha256 "a6d8ec2980c3f5aeea0ead8e23abeb4df6a5772d82effb7ab3005f2f4639c5e0"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.77/statup-linux-x32.tar.gz"
      sha256 "c243f08f4396da4943c69850cf1ab4dfcd30b74feb7d4b838c7b7636f80a1e26"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
