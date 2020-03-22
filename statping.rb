class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.12"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.12/statping-osx-x64.tar.gz"
      sha256 "0de050531ba0cb98ae8c667f07ef9d267c219c8e099ade18aa38eb5f2c6678db"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.12/statping-osx-x32.tar.gz"
      sha256 "1d645f48e2206d50aeb738409b799e309334d9b30f338d717ceadaa8635b8569"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.12/statping-linux-x64.tar.gz"
      sha256 "dee3b609280be58dea4450afc00eb56bb16be1c4ae75d1016983ded8065abbbd"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.12/statping-linux-x32.tar.gz"
      sha256 "254f419c71e2be46149e406a2fc6aa4eaff2c6713345a55a8bbc2d12dd95da95"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
