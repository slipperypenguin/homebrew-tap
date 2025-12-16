class NextupTui < Formula
  desc "Terminal application that randomizes a list of names"
  homepage "https://github.com/slipperypenguin/nextup"
  url "https://github.com/slipperypenguin/nextup/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "d0d199b905f8753fe1e11a3e03cb8fc75a87aeeb71423255763c4465f06726cb"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "nextup", shell_output("#{bin}/nextup --help")
  end
end
