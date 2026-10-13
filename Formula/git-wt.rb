class GitWt < Formula
  desc "Collection of useful Git commands written in Bash"
  homepage "https://github.com/AranBorkum/git-wt"
  url "https://github.com/AranBorkum/git-wt/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "ff6a55804d9344c85d7d535593c70c1cdcc33c20b009e5678e3e636b305bc06b"
  license "MIT"

  depends_on "fzf"

  def install
    libexec.install "git-wt", "lib"
    bin.install_symlink libexec/"git-wt"
  end

  test do
    assert_match "git-wt #{version}", shell_output("#{bin}/git-wt version")
    assert_match "git wt <command>", shell_output("#{bin}/git-wt help 2>&1")
  end
end
