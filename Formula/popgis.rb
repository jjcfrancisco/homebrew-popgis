# ghloc.rb

class Popgis < Formula
    desc "A blazing fast way to insert GeoJSON & ShapeFile into a PostGIS database"
    homepage "https://github.com/jjcfrancisco/popgis"
    url "https://github.com/jjcfrancisco/popgis/archive/refs/tags/v0.3.3.tar.gz"
    sha256 "db0d7cca177f497e6c9780c3c7f74ed47cabfca3883945c1b2c439b55a240f2a"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      assert_match /^popgis /, shell_output("#{bin}/popgis --version")
    end
  end
