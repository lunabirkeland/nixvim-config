{
  plugins = {
    gitsigns.enable = true;
    neogit.enable = true;
  };

  keymaps = [
    {
      key = "<leader>g";
      action = "<cmd>Neogit kind=floating<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Neogit";
      };
    }
  ];
}
