{ pkgs, config, lib, ... }: {
  #console.font = "cyr-sun16";
  #console.keyMap = "ruwin_cplk-UTF-8";
  time.timeZone = "Asia/Yekaterinburg";
  
    console =  {
    earlySetup = true;
    font = "ter-v16n";
    packages = [ pkgs.terminus_font ];
    useXkbConfig = true;
  };

  i18n.defaultLocale = "ru_RU.UTF-8";

  services.xserver = {
    xkbModel = "pc105";
    layout = "us,ru";
    xkbOptions = "grp:caps_toggle,grp_led:caps";
  };

}
