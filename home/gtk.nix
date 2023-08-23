{ pkgs, ... }:
{
  gtk = {
    enable = true;
    theme = {
      package = pkgs.numix-gtk-theme;
      name = "Numix";
    };
    iconTheme = {
      package = pkgs.nordzy-icon-theme;
      name = "Nordzy";
    };
    gtk2.extraConfig = ''
      gtk-cursor-theme-size = 16
      gtk-cursor-theme-name = "Nordzy-cursors"
    '';
    gtk3.extraConfig = {
      gtk-cursor-theme-size = 16;
      gtk-cursor-theme-name = "Nordzy-cursors";
    };
  };
}
