class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.47"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.47/statping-osx-x64.tar.gz"
      sha256 "cb1d86a87d9db1a683e14e12abe2bb7e8e62ff912b31edcae5a06a3bf542761e"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.47/statping-osx-x32.tar.gz"
      sha256 "26e52da043969e75b48fb1e65dbb8b51e47cbdb400dbc2d71ec947fd7670c89e"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.47/statping-linux-x64.tar.gz"
      sha256 "7e0e22e07775255a4626044f69144e6ae301c3b1a16534d6204d7382f3c98d01"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.47/statping-linux-x32.tar.gz"
      sha256 "e312bf34e92fe9075f5d616010cf5821afddf6f6f47b7c95c80b672ddb8ad5d3"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
