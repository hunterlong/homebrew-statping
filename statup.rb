class Statup < Formula
  homepage 'https://statup.io'
  desc "An easy to use Status Page for your websites and applications."
  homepage "https://github.com/hunterlong/statup"
  version "0.241"
  if OS.mac?
    if bits_64?
      url "https://github.com/hunterlong/statup/releases/download/0.241/statup-osx-x64.tar.gz"
      sha256 "7da1b8641b93eb10f1d20e3b72362e7aa817eb9d4ec88767b2dfddbfcf445f20"
    else
      url "https://github.com/hunterlong/statup/releases/download/0.241/statup-osx-x32.tar.gz"
      sha256 "f3c40d2f7deb689433d22d73b99cb029999023451f9f7f5f89c5c7139e542278"
    end
  elsif OS.linux?
      if bits_64?
        url "https://github.com/hunterlong/statup/releases/download/0.241/statup-linux-x64.tar.gz"
        sha256 "ffd5b337c4bf27f214b86bc7e36bdb9877bc2b7c8103f2230aa653b492c088fe"
      else
        url "https://github.com/hunterlong/statup/releases/download/0.241/statup-linux-x32.tar.gz"
        sha256 "4962542c0a83df1d7498586635a8ddb366d5eea47da844d0f392e33258605833"
      end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end

  def bits_64?
    Hardware.is_64_bit?
  end
end
