class Noorfetch < Formula
  desc "Minimal and fast system information fetch tool written in Rust"
  homepage "https://codeberg.org/limforge/noorfetch"
  url "https://codeberg.org/limforge/noorfetch/archive/3.0.0.tar.gz"
  sha256 "b2ade672f29545880815377478e83dc0651333089f8dd00d8cc17a066e5bed34"
  license "LGPL-3.0-or-later"
  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args
  end
  test do
    assert_match "noorfetch", shell_output("#{bin}/noorfetch --help")
  end
end
