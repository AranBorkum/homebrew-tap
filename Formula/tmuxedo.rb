class Tmuxedo < Formula
  desc "A Cleaner, Modular Approach to Tmux Configuration"
  homepage "https://github.com/AranBorkum/tmuxedo"
  url "https://github.com/AranBorkum/tmuxedo/archive/refs/tags/v0.1.13.tar.gz"
  sha256 "d2faf4713120d49f4f2d559d4b8a0b0c47a06fd8a96bd1f423de281a930f9fdb"
  license "MIT" # or your license

  depends_on "rust" => :build

  def install
    # specific standard cargo arguments for Homebrew
    system "cargo", "install", *std_cargo_args
  end

  test do
    # Replace this with a simple command to verify installation
    system "#{bin}/tmuxedo", "--version"
  end
end
