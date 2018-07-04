class Statup < Formula
  homepage 'https://statup.io'
  desc "An easy to use Status Page for your websites and applications."
  homepage "https://github.com/hunterlong/statup"
  version "0.29.4"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.29.4/statup-osx-x64.tar.gz"
      sha256 "7567c9cd86f9db918f26c3d391b0f825b9e6197a18c82cdbc65812cb2338fef0"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.29.4/statup-osx-x32.tar.gz"
      sha256 "c52488d09827c2f5a3f68f9314212b11a509d5b7f1763e5a48ba01cb0b628db5"
    end
  elsif OS.linux?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hunterlong/statup/releases/download/v0.29.4/statup-linux-x64.tar.gz"
        sha256 "53c1ec346af5f4bc4a76b1746e0c3b50849f6b84a6ab11b14ff29ccef2026cd0"
      else
        url "https://github.com/hunterlong/statup/releases/download/v0.29.4/statup-linux-x32.tar.gz"
        sha256 "40b63d6861ea0177d991ea3cdbc32fcac3a655a7d0b485d3bdbdbdc00c83b5e8"
      end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end

end
