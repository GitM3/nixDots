{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    ohMyZsh.enable = true;
  };

  home.shellAliases = {
    ll = "ls -lah";
    gs = "git status";
  };
}
