# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Bisect < Formula
  desc "Find the interesting item in a list of items"
  homepage "https://github.com/kaukas/bisect"
  url "https://github.com/kaukas/bisect/archive/v0.1.tar.gz"
  sha256 "4e16b4a0d0f6eefc7b778de614009e52ae1a1764fc62e8ea4c8b79aa020e05de"
  license "MIT"

  depends_on "crystal" => :build

  def install
    system "shards", "build", "--release"
    bin.install "bin/bisect"
  end

  test do
    # output = shell_output("#{bin}/bisect --help")
    # assert_match "Usage", output
    false
  end
end
