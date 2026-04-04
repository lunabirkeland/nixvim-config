{pkgs, ...}: let
  # Helper to determine if we're on Darwin
  isLinux = pkgs.stdenv.isLinux;

  # Common packages for all systems
  commonPackages = with pkgs; [
    # Required by telescope
    ripgrep
    fd
  ];

  # Linux-specific packages
  linuxPackages = with pkgs; [
    wl-clipboard # Wayland clipboard
    xdg-utils
  ];
in {
  # Import all your configuration modules here
  imports = [
    ./keymaps.nix
    ./ui
    ./cmp
    ./lsp
    ./opts.nix
  ];

  extraPackages =
    commonPackages
    ++ (
      if isLinux
      then linuxPackages
      else []
    );
}
