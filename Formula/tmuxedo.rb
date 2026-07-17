class Tmuxedo < Formula
  desc "A Cleaner, Modular Approach to Tmux Configuration"
  homepage "https://github.com/AranBorkum/tmuxedo"
  url "https://github.com/AranBorkum/tmuxedo/archive/refs/tags/v0.1.16.tar.gz"
  sha256 "aa2157c36f5d3ce05e28ae88a4d6da9a4f0028b991f77eaf878257a149d09a06"
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
