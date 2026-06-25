{ config , pkgs, ... }:
{
  programs.fish.enable = true;
  programs.hyprland = {
    enable = true;
    package = pkgs.hyprland;
 };
 
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
	vim
	librewolf
	discord
	spotify
	steam
	fastfetch
	git
	kitty
	sddm-astronaut
	hyprland
   ];
}
