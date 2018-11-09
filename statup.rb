class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.79.5"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.79.5/statup-osx-x64.tar.gz"
      sha256 "f2386433e33f6b887768ccdf1b78df0d9ca394cd488f86627640e614d30bbb9f"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.79.5/statup-osx-x32.tar.gz"
      sha256 "e08a962a92deff160bfeaccf99b781c6b82b57a56f5cc870962ab2b8f881c165"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.79.5/statup-linux-x64.tar.gz"
      sha256 "2e07a1791c1c169bbfa64efccd824a029c85f96d60ee11ce02918172c29bc26c"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.79.5/statup-linux-x32.tar.gz"
      sha256 "aef80fa443b85a584d9c21db23eef602a49b0ab9c344fc2d72a3d47cebd83405"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
