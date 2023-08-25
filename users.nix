{ config, pkgs, lib, ... }:

{
  users = {
    mutableUsers = false;
    users = {
      ai = {
        description = "🖕";
        extraGroups = [ "wheel" "audio" "video" "networkmanager" "adbusers" "vboxusers" ];
        shell = pkgs.zsh;
        home = "/home/ai";
        isNormalUser = true;
        uid = 1000;
        hashedPassword = "$6$q/P1tU59KGDP/0Gz$ZwhTL1cIv.A64bMMQ.QSDv600n8SXY1SpcgBAeClF0BumXl0GhQ8sNoAakS0l5BvuacIPVfhnt2Hg3hkwVJ1e.";
        packages = with pkgs ; [
	mc
	btrbk
        appimage-run
	#syncthing
	inetutils
	exiftool
        ];
    };
    };
    };
}
