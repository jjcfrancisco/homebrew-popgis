# ghloc.rb

class Popgis < Formula
    desc "A blazing fast way to insert GeoJSON & ShapeFile into a PostGIS database"
    homepage "https://github.com/jjcfrancisco/popgis"
    url "https://github.com/jjcfrancisco/popgis/archive/refs/tags/v0.3.1.tar.gz"
    sha256 "8696a66f13e19762b8413cf5852b05042066e1af2845fc5da970ed3ef5b78c07"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      assert_match /^popgis /, shell_output("#{bin}/popgis --version")
    end
  end
