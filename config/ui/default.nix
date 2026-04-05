{
  imports = [
    ./barbar.nix
    ./term.nix
    ./tree.nix
    ./leap.nix
    ./git.nix
    ./telescope.nix
    ./transparent.nix
  ];

  plugins = {
    scrollview.enable = true;
    web-devicons.enable = true;
    neoscroll.enable = true;
    indent-blankline.enable = true;
    lualine.enable = true;
    todo-comments.enable = true;
    nvim-surround.enable = true;
    sleuth.enable = true;
    snacks = {
      enable = true;
      settings = {
        bigfile = {
          enabled = true;
        };
        quickfile = {
          enabled = true;
        };
        statuscolumn = {
          enabled = true;
        };
        words = {
          debounce = 100;
          enabled = true;
        };
      };
    };
    fidget = {
      enable = true;
      settings.notification.window.winblend = 0;
    };
    illuminate.enable = true;
    comment.enable = true;
    colorizer.enable = true;
  };
}
