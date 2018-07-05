class Statup < Formula
  homepage 'https://statup.io'
  desc "An easy to use Status Page for your websites and applications."
  homepage "https://github.com/hunterlong/statup"
  version "0.29.5"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/v0.29.5/statup-osx-x64.tar.gz"
      sha256 "038e252a40b1b01414ccae5a150ab49039bfd0ba1202e6a7f47e270a8815c1a6"
    else
      url "https://github.com/hunterlong/statup/releases/download/v0.29.5/statup-osx-x32.tar.gz"
      sha256 "22b4cb524e8eb7688f81434ae542d5de56c7eb8d23afa237b4a259fab1333d3f"
    end
  elsif OS.linux?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hunterlong/statup/releases/download/v0.29.5/statup-linux-x64.tar.gz"
        sha256 "955022092ac1088cd3156a8364d3b8954241efd778126cc8c9b4f3717ce4e74c"
      else
        url "https://github.com/hunterlong/statup/releases/download/v0.29.5/statup-linux-x32.tar.gz"
        sha256 "2b9118f37999a852a982ade24667257101c95c241fba05b7b1ecf42842ec47e4"
      end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end

end
