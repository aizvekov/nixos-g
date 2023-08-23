{ config, pkgs, lib, ... }:
{

services.xserver.enable = true;

services.xserver.desktopManager.gnome.enable = true;
services.xserver.displayManager.gdm.enable = true;
#services.xserver.displayManager.gdm.nvidiaWayland = true;

#services.xserver.displayManager.autoLogin.enable = true;
#services.xserver.displayManager.autoLogin.user = "ai";

services.colord.enable = true;


environment.gnome.excludePackages = 
[
       pkgs.baobab
       pkgs.gnome.cheese
       pkgs.epiphany
       pkgs.gnome.gnome-clocks
       pkgs.gnome.gnome-contacts
       pkgs.gnome.gnome-maps
       pkgs.gnome-photos
       pkgs.gnome.gnome-software
       pkgs.gnome.simple-scan
       pkgs.gnome.yelp
       pkgs.gnome-tour
       pkgs.gnome.geary
];

  home-manager.users.ai = {
   dconf.settings = {
      "org/gnome/desktop/interface" = {
       cursor-theme = "Nordzy-cursors";
#       gtk-theme = "Nordic-Polar";
       font-antialiasing = "rgba";
#       text-scaling-factor = 102.46;
 };

#    "org/gnome/desktop/wm/preferences" = {
#     theme = "Nordic-Polar";
#    };

#    "org/gnome/desktop/input-sources" = {
#      per-window = true;
#      sources = "[('xkb', 'us'), ('xkb', 'ru')]";
#    };

#    "org/gnome/desktop/wm/keybindings" = {
#     switch-input-source =  "['Super', 'XF86Keyboard']";
#     switch-input-source-backward =  "['Super', 'XF86Keyboard']";
#    };
};
};
}



