{...}: {
  globals.mapleader = " ";
  plugins.which-key.enable = true;
  keymaps = [
    {
      key = "<esc>";
      action = "<cmd>noh<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Clear search";
      };
    }
  ];
}
