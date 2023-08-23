{ pkgs, ... }:

{
  fonts = {
    fontconfig = {
      enable = true;
      antialias = true;
      defaultFonts = {
        monospace = [ "Iosevka" ];
        sansSerif = [ "Source Sans Pro" ];
        serif = [ "Source Serif Pro" ];
      };
    };
    enableDefaultFonts = true;
    fontDir.enable = true;
    fonts = with pkgs; [
      font-awesome
      iosevka-bin
      source-sans-pro
      source-serif-pro
      (nerdfonts.override { fonts = [ "DroidSansMono" ]; })
    ];
  };
}
