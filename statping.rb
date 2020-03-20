class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.10"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.10/statping-osx-x64.tar.gz"
      sha256 "f17081becb5cda284e410f39f0d2e82bb268f32993dd6d51e80e97094e8bc7f1"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.10/statping-osx-x32.tar.gz"
      sha256 "6006d21b2e9cbbd4a2c94c48398469590ff8d9cfed2432cf022a4cc661710667"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.10/statping-linux-x64.tar.gz"
      sha256 "29abc99852ee116a6ded1d98772374c1b5e776a0bf9a4938f8dac7ad8b61efde"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.10/statping-linux-x32.tar.gz"
      sha256 "88aa7be5815f5d9be2aff45320abb6f2d5dc8477f46bec8c5c498d4a2dfd1d97"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
