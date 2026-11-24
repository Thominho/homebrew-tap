class Unannoy < Formula
  desc "Reversible fixes for the macOS annoyances everyone complains about"
  homepage "https://github.com/Thominho/unannoy"
  url "https://github.com/Thominho/unannoy/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "a82d21cd4a403ecf69a2ef56a94cac1a3ee26a7592519b323da85ab95b73fbec"
  license "MIT"
  head "https://github.com/Thominho/unannoy.git", branch: "main"

  depends_on :macos

  def install
    bin.install "unannoy"
  end

  test do
    assert_match "unannoy #{version}", shell_output("#{bin}/unannoy --version")
    assert_match "finder-search-this-folder", shell_output("#{bin}/unannoy docs")
  end
end
