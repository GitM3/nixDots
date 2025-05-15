{ config, pkgs, ... }:

{
home.packages = with pkgs; [
	anki obsidian bat zellij lazygit lazydocker
];
  programs.git = {
    enable = true;
    userName = "GitM3";
    userEmail = "zander@polsons.info";
  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };
}

