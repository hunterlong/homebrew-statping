class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.29.9"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.29.9/statup-osx-x64.tar.gz"
      sha256 "942af6eacfc3a9028840c8c533518d34ad849522b26a1a6c4fe803a00a202612"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.29.9/statup-osx-x32.tar.gz"
      sha256 "21f38e59b7f143f8f6b84c7694aa87983ca7952d25d054d17ac7dadc0a54a5fc"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.29.9/statup-linux-x64.tar.gz"
      sha256 "7a65c66270ba8c91b1bb1f0084e93179745c3f32c537c260e2582106603edb0f"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.29.9/statup-linux-x32.tar.gz"
      sha256 "98b1734f4832df1b39b589b5f3500ce8de6cf01784977a526246f1b45ccf8226"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
