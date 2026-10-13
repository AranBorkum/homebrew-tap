class GitThis < Formula
  desc "A collection of useful Git commands written in Bash"
  homepage "https://github.com/AranBorkum/git-wt"
  url "https://github.com/AranBorkum/git-wt/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "git-wt"
  end

  test do
    assert_match "git-wt #{version}", shell_output("#{bin}/git-wt version")
  end
end
