class Tmuxedo < Formula
  desc "A Cleaner, Modular Approach to Tmux Configuration"
  homepage "https://github.com/AranBorkum/tmuxedo"
  url "https://github.com/AranBorkum/tmuxedo/archive/refs/tags/v0.1.15.tar.gz"
  sha256 "c34510da90b777b398e9f7a3a055fb83fd888b8a50d5e18148e18d582e6412e6"
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
