class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.14"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.14/statping-osx-x64.tar.gz"
      sha256 "46c9e0db2374bae06163ffeb23403f87b7a9baf3000be183107b46a207a5338f"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.14/statping-osx-x32.tar.gz"
      sha256 "56feb20b92a2b72a07d98e8a48d6e7c24c70d8b1095fada7e43694e8b377037d"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.14/statping-linux-x64.tar.gz"
      sha256 "31870094db3b0dba0bf66cddd10afede248b58af9aa1d376c8919ace69bff2c5"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.14/statping-linux-x32.tar.gz"
      sha256 "7797793d6df5398e7887be508bb16251281e1f3b86dd60b986481b0858159f5c"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
