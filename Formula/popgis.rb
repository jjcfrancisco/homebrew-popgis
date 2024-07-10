# ghloc.rb

class Popgis < Formula
    desc "A blazing fast way to insert GeoJSON & ShapeFile into a PostGIS database"
    homepage "https://github.com/jjcfrancisco/popgis"
    url "https://github.com/jjcfrancisco/popgis/archive/refs/tags/v0.3.0.tar.gz"
    sha256 "44b8a24fe1b8caba80951ada82acd1a6220d11c41be04bd9968a7c59f985539e"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      assert_match /^popgis /, shell_output("#{bin}/popgis --version")
    end
  end
