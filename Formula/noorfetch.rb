class Noorfetch < Formula
  desc "Minimal and fast system information fetch tool written in Rust"
  homepage "https://codeberg.org/limforge/noorfetch"
  url "https://codeberg.org/limforge/noorfetch/archive/3.1.0.tar.gz"
  sha256 "516fc28bb6bfcb28478b5d81d216428ff2162c3605aa8dc5f768f37ebb50f5cc"
  license "LGPL-3.0-or-later"
  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args
  end
  test do
    assert_match "noorfetch", shell_output("#{bin}/noorfetch --help")
  end
end
