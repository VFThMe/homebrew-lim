class Noorfetch < Formula
  desc "Minimal and fast system information fetch tool written in Rust"
  homepage "https://codeberg.org/limforge/noorfetch"
  url "https://codeberg.org/limforge/noorfetch/archive/2.0.0.tar.gz"
  sha256 "8bd906bc19b2096253edd870eff3ed086f9c28d06a3b3d144ede222dd67c9ef3"
  license "GPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "noorfetch", shell_output("#{bin}/noorfetch --help")
  end
end
