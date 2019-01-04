class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/hunterlong/statping"
  version "0.80.34"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.34/statping-osx-x64.tar.gz"
      sha256 "087efc4cc14a537514f0175236d141adc24ed64fed69de0c7fd8a6e8f7a47b98"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.34/statping-osx-x32.tar.gz"
      sha256 "64423e5e693b18af03f223fbecae12112c0614478cc96d991c01f328c4dae6cb"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/statping/releases/download/v0.80.34/statping-linux-x64.tar.gz"
      sha256 "d16a48fdaf41d2834c929a493a9acbc09fc82933d4add8497ff27c1c1e24cf3b"
    else
      url "https://github.com/hunterlong/statping/releases/download/v0.80.34/statping-linux-x32.tar.gz"
      sha256 "de660bf80bcb63beb34dabe9f6dde395d5abdbb422adad317d3c7baf0e3053f4"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
