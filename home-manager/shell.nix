{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
autocd = true;

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    historySubstringSearch.enable = true;
  };
  home.shellAliases = {
    ll = "ls -lah";
    gs = "git status";
  };
}
