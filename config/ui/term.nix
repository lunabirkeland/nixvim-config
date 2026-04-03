{
  plugins.toggleterm = {
    enable = true;
    settings = {
      direction = "float";
    };
  };
  keymaps = [
    {
      key = "<Leader>t";
      action = "<cmd>ToggleTerm<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Open floating terminal";
      };
    }
    {
      key = "<esc>";
      mode = ["t"];
      action = "<cmd>ToggleTerm<CR>";
      options = {
        silent = true;
        desc = "Close floating terminal";
      };
    }
  ];
}
