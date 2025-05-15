{ config, pkgs, lib, hyprland, hy3, ... }:

{
  imports = [
    hyprland.homeManagerModules.default
  ];

  wayland.windowManager.hyprland = {
    enable = true;

    plugins = [
      hy3.packages.${pkgs.system}.hy3
    ];

    settings = {
      "$mod" = "SUPER";
      bind = [
        "$mod, RETURN, exec, kitty"
        "$mod, Q, killactive"
        "$mod, M, exit"
      ];
    };
  };

  home.packages = with pkgs; [
    hyprpaper
    hyprlock
    kitty
    waybar
    rofi-wayland
    wofi
    swww
    xdg-desktop-portal-hyprland
  ];
}
