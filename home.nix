# ~/.config/home-manager/home.nix
{ config, pkgs, ... }:

{
  # Define the Home Manager state version
  home.stateVersion = "24.05";
  home.username = "pungkula";
  home.homeDirectory ="/home/pungkula";

  # IMPORT
  imports = [ 
    ./gnome.nix 
  ];

  # PROGRAMS
  #programs.git = {
  #  enable = true;
  #  userName  = "my_git_username";
  #  userEmail = "my_git_username@gmail.com";
  #};
}
