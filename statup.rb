class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.29.9"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.29.9/statup-osx-x64.tar.gz"
      sha256 "8c4777e07885c59680cf226dd1eadba56f912fcb7b5575850b703ab687e87c58"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.29.9/statup-osx-x32.tar.gz"
      sha256 "78576b6b609dd9262c69ad3a8a4eddb42b2a53c46eb7e0c5d18d30f05f9be3ec"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.29.9/statup-linux-x64.tar.gz"
      sha256 "461befd314a1d02d15ece6f654ca550cd971415be1ba75e4f98180254f8f1eeb"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.29.9/statup-linux-x32.tar.gz"
      sha256 "3ace6c697b6f75fa473e6cddea54d892f08e4fc4f2f3bf9281ce283d284e381c"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
