{ pkgs, ... }:

{



#  imports = [
#    ./home/gtk.nix
# ];

  programs.fzf.enable = true;
  programs.gpg.enable = true;
  programs.htop.enable = true;
  home.packages = with pkgs;[
    keepassxc
    vivaldi
    vivaldi-ffmpeg-codecs
    doublecmd
    transmission-gtk
    android-tools
    git
    gimp
    inkscape
    obs-studio
    scribus
    tdesktop
#    mpv
#    handbrake
    meld
    exa
    openssl
    (let 
  my-python-packages = python-packages: with python-packages; [ 
    requests
    pycrypto
    pycryptodome
     #other python packages you want
  ];
  python-with-my-packages = python3.withPackages my-python-packages;
in
python-with-my-packages)
  ];

#  xdg.userDirs.enable = true;
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
