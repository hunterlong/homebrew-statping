class Statup < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statup"
  version "0.79.4"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.79.4/statup-osx-x64.tar.gz"
      sha256 "b835c5c3c4b21f82a89d616eec6505987ece233f1a23c7e5ed3b213121cc7957"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.79.4/statup-osx-x32.tar.gz"
      sha256 "59f5e0dfd561163cbbac0cda7f110ac9210c4f15d8070268446e148885067f89"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.79.4/statup-linux-x64.tar.gz"
      sha256 "e64fa26ef0f1f17a673bae54bdcf7d3dcb27801c652bbbfc1fa4b1fc4b0f74cc"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.79.4/statup-linux-x32.tar.gz"
      sha256 "484da3db4a145d416758de0ef3e7f3d426ccaf958683f24e4869c0f99c03991b"
    end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end
end
