class GitWt < Formula
  desc "Collection of useful Git commands written in Bash"
  homepage "https://github.com/AranBorkum/git-wt"
  url "https://github.com/AranBorkum/git-wt/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0cf9f797c7bab28bdac22c501068153a009fab122de07a67428b105432e32b2b"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "git-wt"
  end

  test do
    assert_match "git wt <command>", shell_output(bin/"git-wt", 1)
  end
end
