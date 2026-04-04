{
  plugins = {
    bufferline.enable = true;
    web-devicons.enable = true;
  };

  keymaps = [
    {
      key = "[b";
      action = "<cmd>BufferLineCyclePrev<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Previous buffer";
      };
    }
    {
      key = "]d";
      action = "<cmd>BufferLineCycleNext<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Next buffer";
      };
    }
  ];
}
