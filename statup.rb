class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.29.8"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.29.8/statup-osx-x64.tar.gz"
      sha256 "bff1ff67eb0f9a96064fdb0a9b26223ea12d004308dc97da97eeb4753b981873"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.29.8/statup-osx-x32.tar.gz"
      sha256 "c74f66b0c3db0399e3d86d921b09674b1ff70b5866de9ffbefe10401cea4d116"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.29.8/statup-linux-x64.tar.gz"
      sha256 "d42b3580231a9428ba18480719110ead284d0fc30af913fb140fbd81610420e3"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.29.8/statup-linux-x32.tar.gz"
      sha256 "98ee4769e51c03b9b9ac54018b153edf65efa226619f63d11dd679c23f7f61b2"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
