let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
in pkgs.mkShell {
  shellHook = ''
    export MOBILE_NIXOS_DEVICE="oneplus-oneplus3"
    export NIX_PATH="nixpkgs=${sources.nixpkgs}:mobile-nixos-configuration=$(pwd)/local.nix"
  '';
}
