class Noorfetch < Formula
  desc "Minimal and fast system information fetch tool written in Rust"
  homepage "https://codeberg.org/limforge/noorfetch"
  url "https://codeberg.org/limforge/noorfetch/archive/2.0.0.tar.gz"
  sha256 "9af4b842ff487c7ad7b05cbc45d07b904b7056e22ba8f6c6daceda2ec739f054"
  license "GPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "noorfetch", shell_output("#{bin}/noorfetch --help")
  end
end
