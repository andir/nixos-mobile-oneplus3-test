let
  sources = import ./nix/sources.nix;

  mobile-nixos = import sources.mobile-nixos {
    device = "oneplus-oneplus3";
    configuration = [
      (import ./default.nix)
    ];
  };
in {
  inherit (mobile-nixos) build installer;
}
