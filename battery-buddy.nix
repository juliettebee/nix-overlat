{ stdenv, fetchzip }:

stdenv.mkDerivation rec {
  name = "battery-buddy";
  version = "1.0.0";
  
  src = fetchzip {
    url = "https://batterybuddy.app/releases/Battery%20Buddy.zip";
    sha256 = "0f9da67711dca90e2bb3c1ae43070db7af708d6159cfe5c7dcca9f4bb52e8318";
  };
  
  installPhase = ''
  mkdir -p $out/Applications/Battery\ Buddy.app
  cp -r Contents $out/Applications/Battery\ Buddy.app/
  '';
}
