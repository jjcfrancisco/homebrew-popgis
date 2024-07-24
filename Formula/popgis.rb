# ghloc.rb

class Popgis < Formula
    desc "A blazing fast way to insert GeoJSON & ShapeFile into a PostGIS database"
    homepage "https://github.com/jjcfrancisco/popgis"
    url "https://github.com/jjcfrancisco/popgis/archive/refs/tags/v0.3.4.tar.gz"
    sha256 "f8627d97d5044f660bb3c999a89f0864973dc3063a29952cce3a82b7020e5ef1"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      assert_match /^popgis /, shell_output("#{bin}/popgis --version")
    end
  end
