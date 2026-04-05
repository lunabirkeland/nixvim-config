{lib, ...}: {
  imports = [
    ./conform.nix
    ./treesitter.nix
  ];

  plugins.lspconfig.enable = true;

  lsp = {
    inlayHints.enable = true;
    servers = {
      rust_analyzer = {
        enable = true;
        # installCargo = true;
        # installRustc = true;
        # installRustfmt = true;
      };
      wgsl_analyzer.enable = true;
      nil_ls.enable = true;
      tinymist.enable = true;
    };
    keymaps =
      lib.mapAttrsToList
      (
        key: props:
          {
            inherit key;
            options.silent = true;
          }
          // props
      )
      {
        "<leader>k".action.__raw = "function() vim.diagnostic.jump({ count=-1, float=true }) end";
        "<leader>j".action.__raw = "function() vim.diagnostic.jump({ count=1, float=true }) end";
        gd.lspBufAction = "definition";
        gD.lspBufAction = "references";
        gt.lspBufAction = "type_definition";
        gi.lspBufAction = "implementation";
        K.lspBufAction = "hover";
        "<leader>r".lspBufAction = "rename";
        "<leader>f".lspBufAction = "format";
      };
  };
}
