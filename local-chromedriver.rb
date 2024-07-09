# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class LocalChromedriver < Formula
  desc "chromedriver version 116.0.5845.96"
  homepage "https://github.com/yosefbennywidyo/homebrew-local-repository"
  url "https://github.com/Homebrew/homebrew-cask/blob/b9ee893f20b4183f9cf7e204ea408c2b11c42ca2/Casks/c/chromedriver.rb"
  version "116.0.5845.96"
  sha256 "cbc7983c121ab6e66221d413aa1cb195f29f27e103d4a28f74fadf695d34afe8"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./configure", "--disable-silent-rules", *std_configure_args
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test local-chromedriver`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
