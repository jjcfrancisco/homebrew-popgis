# ghloc.rb

class Popgis < Formula
    desc "A blazing fast way to insert GeoJSON & ShapeFile into a PostGIS database"
    homepage "https://github.com/jjcfrancisco/popgis"
    url "https://github.com/jjcfrancisco/popgis/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "69a9fc19e7f80ec830909088704923ccdecea2c1c60bae2f368b1e67a5b908f6"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      assert_match /^popgis /, shell_output("#{bin}/popgis --version")
    end
  end