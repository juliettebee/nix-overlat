{ pkgs ? import <nixpkgs> { } }:

rec {
  battery-buddy = pkgs.callPackage ./battery-buddy.nix {};
}