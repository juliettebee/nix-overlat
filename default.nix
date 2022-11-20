let
  pkgs = import <nixpkgs> {};
in
self: super: rec {
  battery-buddy = super.callPackage ./battery-buddy {};
}
