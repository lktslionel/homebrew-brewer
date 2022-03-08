# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Brewer < Formula
  desc ""
  homepage "https://github.com/lktslionel/brewer"
  url "https://github.com/lktslionel/brewer/archive/refs/tags/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "85a45ffac9191ddc76c5d0ca8c72a65f4e994379c79b26be2a9ea8abb0d0db2a"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    bin.install     'brewer'
    bin.install     Dir["source"]
    prefix.install  'README.md'
    prefix.install  '.VERSION'
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
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
  end
end
