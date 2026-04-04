{pkgs, ...}: {
  extraPackages = with pkgs; [
    shellcheck
    shfmt
    black
    isort
    prettier
    alejandra
    nixfmt
    stylua
    rustfmt
  ];

  plugins = {
    conform-nvim = {
      enable = true;
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
        };
      };
    };
  };
}
