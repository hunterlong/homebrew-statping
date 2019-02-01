class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.42"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.42/statping-osx-x64.tar.gz"
      sha256 "c1334e3f4ac2e1fbe6628437174877e3ee1c995e37f1d0eec2ea974bb346a9d6"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.42/statping-osx-x32.tar.gz"
      sha256 "e353510af5b303d8821b0999051fc296bebbf4f2fbd2e6729ca462bb8615b9d7"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.42/statping-linux-x64.tar.gz"
      sha256 "4860496d7e0ae3b0472cb662e621ec1926cdcc6bcb8dd33d588640c44c419879"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.42/statping-linux-x32.tar.gz"
      sha256 "6e9578e69d63bac86cc3415bccd7cb14e664c69de50d59ca0a0dc2897b84e708"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
