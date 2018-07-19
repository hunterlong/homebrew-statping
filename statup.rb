class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.32"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.32/statup-osx-x64.tar.gz"
      sha256 "45089fda657afb6889ac2ef0710d229ffc06c7e74e9fcb64857470ea0dbf07d5"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.32/statup-osx-x32.tar.gz"
      sha256 "545c206c98c07ffb05f0836cf03cee5c16039e6b6b2cd9257e21ea78becb0cb9"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.32/statup-linux-x64.tar.gz"
      sha256 "5619634f0b7115743dc0b370ba1dc5fb60aa41eef2f29be2e60d9c3042fa254f"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.32/statup-linux-x32.tar.gz"
      sha256 "652f9d4a611ca820df00812d7c74e047e6afae51f20d47af1b946a5340e0683d"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
