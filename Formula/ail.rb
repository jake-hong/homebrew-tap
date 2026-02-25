class Ail < Formula
  desc "Unified CLI/TUI for managing AI coding agent sessions"
  homepage "https://github.com/jake-hong/ail"
  url "https://github.com/jake-hong/ail/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "8b226e541f0f0a367664ed93db343f3425d6f365cf644063966084d9645e0c0d"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ail", shell_output("#{bin}/ail --version")
  end
end
