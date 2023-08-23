{ pkgs, ... }:

{
  # Configuration of the xdg user dirs to create
  environment.etc."xdg/user-dirs.defaults".text = ''
    DOCUMENTS=documents
    DOWNLOAD=downloads
    TEMPLATES=templates
  '';

  services.xserver.displayManager.sessionCommands = ''
    ${pkgs.xdg-user-dirs}/bin/xdg-user-dirs-update &
  '';
}
