class NextupTui < Formula
  desc "Terminal application that randomizes a list of names"
  homepage "https://github.com/slipperypenguin/nextup"
  url "https://github.com/slipperypenguin/nextup/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "6d6d090f5af3daffe2a959f4eb3de85a0f265c23941ef6fbd5f260b6ed74e758"
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
