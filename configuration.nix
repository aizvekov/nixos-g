{ config, pkgs, lib, ... }:
{
  imports =
    [
      ./hardware-configuration.nix
    ./zram.nix
      ./opengl.nix
      ./locale.nix
      ./home.nix
      ./users.nix
	./gnome.nix
	./u-dirs.nix
#      ./sync.nix
      ./pipewire.nix
#	./fonts.nix
	./cursor.nix
      ./zsh.nix
#	./gtk.nix
          ];

#services.xserver.videoDrivers = [ "nvidia" ];
#hardware.nvidia.modesetting.enable = true;
#hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.legacy_390;

  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.enable = true;
  boot.loader.timeout = 2;
  boot.loader.systemd-boot.configurationLimit = 3;
  boot.kernelPackages = pkgs.linuxPackages_latest;
#  boot.kernelParams = [ "quiet" ];
  boot.kernelModules = [ "nouveau" ];

  nix = {
    package = pkgs.nixUnstable;
  };
  
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  

#settings.auto-optimise-store = true;
nixpkgs.config.allowUnfree = true;


  nixpkgs.config.packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  };


  security.sudo.extraRules = [
    {
      users = [ "ai" ];
      commands = [
        {
          command = "/run/current-system/sw/bin/nixos-rebuild";
          options = [ "NOPASSWD" ];
        }
        {
          command = "/run/current-system/sw/bin/nix-collect-garbage";
          options = [ "NOPASSWD" ];
        }
      ];
    }
  ];


  networking = {
    hostName = "AI";
    networkmanager.enable = true;
    firewall.enable = true;
  };

  sound.enable = true;

documentation = {
    enable = false;
    nixos.enable = false;
  };

#  swapDevices = [
#   { device = "/swapfile"; size = 4096; }
#  ];

 #  virtualisation.virtualbox.host.enable = true;
 #  users.extraGroups.vboxusers.members = [ "ai" ];

systemd.services."getty@tty1".enable = false;
systemd.services."autovt@tty1".enable = false;

programs.dconf.enable = true;
services.printing.enable = false;
programs.adb.enable = true;
services.openssh.enable = true;
system.stateVersion = "23.05";

 }

