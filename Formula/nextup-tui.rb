class NextupTui < Formula
  desc "A terminal application that randomizes a list of names. Useful for daily standup meetings."
  homepage "https://github.com/slipperypenguin/nextup"
  url "https://github.com/slipperypenguin/nextup/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "02a3c6fffe82d9db5c7e46d6d607e494225268b3cd479277c9339d38f05d38b9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "nextup", shell_output("#{bin}/nextup --help")
  end
end
