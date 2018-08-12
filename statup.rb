class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.36"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.36/statup-osx-x64.tar.gz"
      sha256 "b2539707b95ffac9e8fe4fc6d4a42266766fcc6e937054627b4b4903ee37e77c"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.36/statup-osx-x32.tar.gz"
      sha256 "1d0667188a951256695e9bd77a5b277253838abeca2ddb3521ef0e72c149fe1e"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.36/statup-linux-x64.tar.gz"
      sha256 "37db03197e6b88061f95e749506fb467b3ad51652c8666a46e67d8194f3a48f3"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.36/statup-linux-x32.tar.gz"
      sha256 "769f52a65f1ec02a6f905c65ddf158841f977874c974ed81903f3ccc99c8735e"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
