let
  battery-buddy = pkgs.callPackage ./battery-buddy.nix {};
  overlays = [
    (self: super: {
      inherit battery-buddy;
    })
  ];
in pkgs