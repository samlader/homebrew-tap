class Gmux < Formula
  desc "Git multiplexer CLI tool"
  homepage "https://github.com/samlader/gmux"
  url "https://github.com/samlader/gmux/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "416df986c4130a4d142b4d94db80f48e8caa16c56e05d6b47f20886cabb09588"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/gmux", "--version"
  end
end
