
{ pkgs, lib, ... }: {

  environment.sessionVariables = {
    XCURSOR_PATH = lib.mkForce "/home/ai/.icons";
  };

  home-manager.users.ai = {

    home.pointerCursor = {
      package = pkgs.nordzy-cursor-theme;
      name = "Nordzy-cursors";
      size = 16;
    };

    home.file."/home/ai/.icons/default".source =
      "${lib.getBin pkgs.nordzy-cursor-theme}/share/icons/Nordzy-cursors";


    home.file."/home/ai/.icons/Breeze".source =
      "${lib.getBin pkgs.nordzy-cursor-theme}/share/icons/Nordzy-cursors";
  };
}
