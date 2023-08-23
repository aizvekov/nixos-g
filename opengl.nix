{ config, pkgs, lib, ... }:
{

  hardware.opengl.enable = true;
  hardware.opengl.driSupport32Bit = true; # needed for steam

}

