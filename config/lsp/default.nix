{...}: {
  imports = [
    ./lspsaga.nix
    ./conform.nix
    ./treesitter.nix
  ];

  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        rust_analyzer = {
          enable = true;
          installCargo = true;
          installRustc = true;
          installRustfmt = true;
        };
        wgsl_analyzer.enable = true;
        nixd.enable = true;
      };
    };
  };
}
