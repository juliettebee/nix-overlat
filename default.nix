let
  battery-buddy = pkgs.callPackage ./battery-buddy.nix {};
  pkgs = import sources.nixpkgs {
    overlays = [
      (self: super: {
        inherit battery-buddy;
      })
    ];
  };

in pkgs