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
        "g[".action.__raw = "function() vim.diagnostic.jump({ count=-1, float=true }) end";
        "g]".action.__raw = "function() vim.diagnostic.jump({ count=1, float=true }) end";
        ga.lspBufAction = "code_action";
        gh.action.__raw = "function() vim.diagnostic.open_float() end";
        gd.lspBufAction = "definition";
        gD.lspBufAction = "references";
        gt.lspBufAction = "type_definition";
        gi.lspBufAction = "implementation";
        K.lspBufAction = "hover";
        gr.lspBufAction = "rename";
        "<leader>f".lspBufAction = "format";
      };
  };
}
