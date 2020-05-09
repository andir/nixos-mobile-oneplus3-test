let
  sources = import ./nix/sources.nix;
in
{
  imports = [
    (import (sources.mobile-nixos + "/lib/configuration.nix") { device = "oneplus-oneplus3"; })
    ./local.nix
  ];
}
