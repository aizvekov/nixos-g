{ lib, ... }:

{
  services.syncthing = rec {
    enable = true;
    openDefaultPorts = true;

    user = "ai";
    group = "users";

    configDir = "/home/${user}/.config/syncthing";
    dataDir = "/home/${user}/.local/share/syncthing";

    overrideDevices = false;

    folders = let
      dirs = lib.genAttrs [ "sync-tv" "sync-a2" ] opts;
      opts = folder: {
        enable = true;
        path = "~/${folder}";
      };
    in { sync.enable = false; } // dirs;
  };
}
