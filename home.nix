{ config, pkgs, ... }:
let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/master.tar.gz";
in
{
  imports = [
    (import "${home-manager}/nixos")
  ];
  


            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.ai = import ./hm.nix;
            programs.zsh.enable = true;
}
