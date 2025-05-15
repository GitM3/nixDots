{ config, pkgs, ... }:

{
home.packages = with pkgs; [
	anki obsidian
];
  programs.git = {
    enable = true;
    userName = "GitM3";
    userEmail = "zander@polsons.info";
  };

  programs.bat.enable = true;
}

