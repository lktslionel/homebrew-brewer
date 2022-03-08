# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Brewer < Formula
  desc "testing brew installer"
  homepage "https://github.com/lktslionel/brewer"
  url "https://github.com/lktslionel/brewer/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "8f3355a3b53bc5115b2c013dd7c0952a482c1ea1d4ef378c4ee3f8e16751bcb3"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    bin.install     'brewer'
    bin.install     Dir["source"]
    prefix.install  'README.md'
    prefix.install  '.VERSION'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test brewer`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
