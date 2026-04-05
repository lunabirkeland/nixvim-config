{
  plugins = {
    barbar = {
      enable = true;
      keymaps = {
        next.key = "<Tab>";
        previous.key = "<S-Tab>";
        pick.key = "<leader>s";
        close = {
          key = "<C-w>";
          options.nowait = true;
        };
      };
    };
    web-devicons.enable = true;
  };
}
