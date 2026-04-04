class Noorfetch < Formula
  desc "Minimal and fast system information fetch tool written in Rust"
  homepage "https://codeberg.org/limforge/noorfetch"
  url "https://codeberg.org/limforge/noorfetch/archive/3.1.0.tar.gz"
  sha256 "5b7ca19771b770a6655b34571a4d635124ae9622eb651edcb6b211ec656ba64f"
  license "LGPL-3.0-or-later"
  head "https://codeberg.org/limforge/noorfetch.git", branch: "main"
  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args
  end
  test do
    assert_match "noorfetch", shell_output("#{bin}/noorfetch --help")
  end
end
