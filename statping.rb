class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.26"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.26/statping-darwin-amd64.tar.gz"
      sha256 "f8097e07a41b743e6a1ae692470a3bac26e80c8623491dfe14317d3bc619c183"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.26/statping-darwin-386.tar.gz"
      sha256 "8c6a24efcc21b4a5418177916da872f4421f4f8bc1a2be7a9a6188c1fcf12ac8"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.26/statping-linux-amd64.tar.gz"
      sha256 "49f9f1af7f2391609dcb78c8d556ed87957b232a79c4bd94942a410a28818555"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.26/statping-linux-386.tar.gz"
      sha256 "0cb592f4c072da4683317168dba4235a708057385bc0e5424cd5a33293181b86"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
