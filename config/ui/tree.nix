{
  plugins = {
    nvim-tree = {
      enable = true;
      settings = {
        diagnostics.enable = true;
        sort.folders_first = false;
        hijack_cursor = true;
      };
    };
  };

  keymaps = [
    {
      key = "<Leader>e";
      action = "<cmd>NvimTreeFindFile<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Open nvim tree";
      };
    }
  ];
}
