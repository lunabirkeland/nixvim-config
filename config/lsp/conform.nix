{
  plugins = {
    conform-nvim = {
      enable = true;
      autoInstall.enable = true;
      settings = {
        format_on_save = {
          lsp_fallback = "fallback";
          timeout_ms = 500;
        };
        notify_on_error = true;

        formatters_by_ft = {
          sh = ["shellcheck" "shfmt"];
          python = ["isort" "black"];
          css = ["prettier"];
          html = ["prettier"];
          json = ["prettier"];
          lua = ["stylua"];
          markdown = ["prettier"];
          nix = ["alejandra"];
          yaml = ["prettier"];
          rust = ["rustfmt"];
          typst = ["typstyle"];
        };
      };
    };
  };
}
