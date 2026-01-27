class Tmuxedo < Formula
  desc "A Cleaner, Modular Approach to Tmux Configuration"
  homepage "https://github.com/AranBorkum/tmuxedo"
  url "https://github.com/AranBorkum/tmuxedo/archive/refs/tags/v0.1.14.tar.gz"
  sha256 "c298cd4e8693570d80f10eebe81a8dc02f14fbdafe72486fd355b57790b04544"
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
