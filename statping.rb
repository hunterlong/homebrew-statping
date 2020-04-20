class Statping < Formula
  desc "Track and monitor your websites and applications uptime"
  homepage "https://github.com/statping/statping"
  version "0.90.29"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.29/statping-darwin-amd64.tar.gz"
      sha256 "63f49963f8889544bfc92c244f68c74cef68b136376c6f2b4f4adad983895687"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.29/statping-darwin-386.tar.gz"
      sha256 "21b8625ccfa0c535fed10eac5483f9fde2a9139e60e2094e9ec1ecde59c2729a"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/statping/statping/releases/download/v0.90.29/statping-linux-amd64.tar.gz"
      sha256 "fc398e9a3e7dae4cee3cf60b41457f54c84a73ef2f4cec5571500ca8bcee30f7"
    else
      url "https://github.com/statping/statping/releases/download/v0.90.29/statping-linux-386.tar.gz"
      sha256 "5f1314482692b47565e74c7aba6f0acca40ed7ffbbe9b9bf3d89db54dc1cf8c1"
    end
  end

  def install
    bin.install "statping"
  end

  test do
    system "#{bin}/statping", "version"
  end
end
