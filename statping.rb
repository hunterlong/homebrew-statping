class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.67"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.67/statping-osx-x64.tar.gz"
      sha256 "20469a882fee2a7802de655df81e785befd326a1c70a4cef2187704cf92ea296"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.67/statping-osx-x32.tar.gz"
      sha256 "ea052264b7ef272d12adb8849d85db3c766a26e3f8bbbc10e38ccf6636701106"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.67/statping-linux-x64.tar.gz"
      sha256 "303f3a2455626f3932209c0960ed8d1b63658b0827cd1cd0adf6e2374deb3bf6"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.67/statping-linux-x32.tar.gz"
      sha256 "cf2630b82b751bd55955dbc062c9cc7df18483ac8041ab3f93a65e22b381b00c"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
