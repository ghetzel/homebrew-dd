class Dogfriend < Formula
  desc "A command line utility for testing Chef changes"
  homepage "https://github.com/DataDog/dogfriend"
  url "https://github.com/DataDog/dogfriend/releases/download/v0.1.4/dogfriend-0.1.4-darwin-x86_64.zip"
  sha256 "c4fd3ce0f296d94f811cf8b3388a4f2d126a4466a10ecc85ed22ef7858ce28ea"

  def install
    unzip_dir = "dogfriend-0.1.4-darwin-x86_64"
    prefix.install Dir["#{unzip_dir}/*"]
    bin.install_symlink prefix+"dogfriend-0.1.4-darwin-x86_64" => "dogfriend"
  end

  test do
    system "#{bin}/dogfriend readme"
  end
end
