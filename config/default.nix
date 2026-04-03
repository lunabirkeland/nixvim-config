{
  pkgs,
  system,
  ...
}: let
  # Helper to determine if we're on Darwin
  isDarwin = pkgs.stdenv.isDarwin;
  isLinux = pkgs.stdenv.isLinux;

  # Common packages for all systems
  commonPackages = with pkgs; [
    # Required by telescope
    ripgrep
    fd
    # Required by CMP and formatters
    alejandra
    nixpkgs-fmt
    prettier
    nixfmt
    stylua
    yapf
    black
    isort
    shfmt
    shellcheck
    rustfmt
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
