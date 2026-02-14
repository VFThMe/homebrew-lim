class Noorfetch < Formula
  desc "Minimal and fast system information fetch tool written in Rust"
  homepage "https://codeberg.org/limforge/noorfetch"
  url "https://codeberg.org/limforge/noorfetch/archive/2.1.0.tar.gz"
  sha256 "af1b3093fe8f039ccd1c1a5d074f874a7590833d8c07e14c3562e303289684f9"
  license "GPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "noorfetch", shell_output("#{bin}/noorfetch --help")
  end
end
