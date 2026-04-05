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
    {
      key = "<C-c>";
      action = "<cmd>b#<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Go back to previous buffer";
      };
    }
    {
      key = "<leader>s";
      action = "<cmd>w<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Save";
      };
    }
    {
      key = "<leader>h";
      action = "<cmd>wincmd h<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Move to window left";
      };
    }
    {
      key = "<leader>l";
      action = "<cmd>wincmd l<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Move to window right";
      };
    }
    {
      key = "<C-Up>";
      action = "<cmd>resize -2<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Resize";
      };
    }
    {
      key = "<C-Up>";
      action = "<cmd>resize -2<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Resize";
      };
    }
    {
      key = "<C-Down>";
      action = "<cmd>resize +2<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Resize";
      };
    }
    {
      key = "<C-Left>";
      action = "<cmd>vertical resize +2<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Resize";
      };
    }
    {
      key = "<C-Right>";
      action = "<cmd>vertical resize -2<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Resize";
      };
    }
  ];
}
