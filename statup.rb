class Statup < Formula
  homepage 'https://statup.io'
  desc "An easy to use Status Page for your websites and applications."
  homepage "https://github.com/hunterlong/statup"
  version "0.241"
  if OS.mac?
    if Hardware.is_64_bit?
      url "https://github.com/hunterlong/statup/releases/download/0.241/statup-osx-x64.tar.gz"
      sha256 "15525a130db2d164180dc9f0ed16d3c6a4abf330fdc63cc7d43dea4834447cbf"
    else
      url "https://github.com/hunterlong/statup/releases/download/0.241/statup-osx-x32.tar.gz"
      sha256 "ac5940aaefa43236671588bc275ebb4e0c92a60cf316ccd307e4230a93323967"
    end
  elsif OS.linux?
      if Hardware.is_64_bit?
        url "https://github.com/hunterlong/statup/releases/download/0.241/statup-linux-x64.tar.gz"
        sha256 "089619ee19af2f67beba1ab0fcc3863e79105e335d88bf17d6ab8efd2b4d3696"
      else
        url "https://github.com/hunterlong/statup/releases/download/0.241/statup-linux-x32.tar.gz"
        sha256 "9a191a3a0c39ac049e1140527d1684587d92704bf35dc28be424974831707313"
      end
  end

  def install
    bin.install "statup"
  end

  test do
    system "#{bin}/statup", "version"
  end

end
