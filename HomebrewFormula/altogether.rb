HOMEBREW_AL2_VERSION = -"0.1.2"
class Altogether < Formula
  # https://github.com/Homebrew/brew/blob/2.0.1/docs/Formula-Cookbook.md
  desc "CLI tool to sync config files between Alfred and Albert"
  homepage "https://github.com/announce/altogether"
  url "https://github.com/announce/altogether/releases/download/v#{HOMEBREW_AL2_VERSION}/darwin-amd64.tar.gz"
  sha256 "15782a8a121604c87cead0a4efc0e74ddcd3319dc44d567921d80d1960fb1f1b"
  head "https://github.com/announce/altogether.git"

  def install
    bin.install "altogether"
  end

  test do
    system "#{bin}/altogether", "--version"
  end
end
