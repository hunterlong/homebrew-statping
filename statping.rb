class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.11"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.11/statping-osx-x64.tar.gz"
      sha256 "8c0e788bebbf8924258bec31ed2732f1779d7f1a373bd0d4c8095fce6f8e0e5c"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.11/statping-osx-x32.tar.gz"
      sha256 "a7e65c03410e157b636cf431f7111d808e4671ff9fcab81b82746326ff6a1337"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.11/statping-linux-x64.tar.gz"
      sha256 "079281f0103b5defd23ca2cb093d68b8b883f1dfcfc582a69fa2b31578565778"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.11/statping-linux-x32.tar.gz"
      sha256 "1f3c399f2df709a8309c096615d70d872db44f47f3264fc85092ab357fcaa5cd"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
