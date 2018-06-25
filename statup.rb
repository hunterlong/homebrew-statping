class Statup < Formula
  homepage 'https://statup.io'
  desc "An easy to use Status Page for your websites and applications."
  homepage "https://github.com/hunterlong/statup"
  version "v0.23"
  if OS.mac?
    if bits_64?
        url "https://github.com/hunterlong/statup/releases/download/v0.23/statup-osx-x64.tar.gz"
        sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
        url "https://github.com/hunterlong/statup/releases/download/v0.23/statup-osx-x32.tar.gz"
        sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  elsif OS.linux?
      if bits_64?
          url "https://github.com/hunterlong/statup/releases/download/v0.23/statup-linux-x64.tar.gz"
          sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
      else
          url "https://github.com/hunterlong/statup/releases/download/v0.23/statup-linux-x32.tar.gz"
          sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
      end
  end

  depends_on :arch => :x86_64

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
