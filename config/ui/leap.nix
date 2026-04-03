{
  plugins.leap.enable = true;

  keymaps = [
    {
      key = "s";
      action = "<Plug>(leap)";
      mode = ["n" "x" "o"];
      options = {
        silent = true;
        desc = "Leap";
      };
    }
    {
      key = "S";
      action = "<Plug>(leap-from-window)";
      mode = "n";
      options = {
        silent = true;
        desc = "Leap from window";
      };
    }
  ];
}
