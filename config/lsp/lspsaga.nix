{
  plugins = {
    lspsaga = {
      enable = true;
      settings = {
        beacon.enable = true;
        symbol_in_winbar = {
          enable = true; # Breadcrumbs
          show_file = false;
        };

        lightbulb = {
          enable = false;
          sign = false;
        };

        outline = {
          auto_preview = false;
          close_after_jump = true;
          auto_close = true;
          layout = "normal"; # normal or float
          win_position = "right"; # left or right
          keys = {
            jump = "e";
            quit = "q";
            toggle_or_jump = "o";
          };
        };

        scroll_preview = {
          scroll_up = "<C-d>";
          scroll_down = "<C-u>";
        };
      };
    };
  };

  keymaps = [
    {
      key = "[d";
      action = "<cmd>Lspsaga diagnostic_jump_prev<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Previous Diagnostic";
      };
    }
    {
      key = "]d";
      action = "<cmd>Lspsaga diagnostic_jump_next<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Next Diagnostic";
      };
    }
    {
      key = "K";
      action = "<cmd>Lspsaga hover_doc<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Hover doc";
      };
    }
    {
      key = "gd";
      action = "<cmd>Lspsaga peek_definition<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Definition";
      };
    }
    {
      key = "gt";
      action = "<cmd>Lspsaga peek_type_definition<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Type definition";
      };
    }
    {
      mode = "n";
      key = "gr";
      action = "<cmd>Lspsaga finder ref<CR>";
      options = {
        silent = true;
        desc = "References";
      };
    }
    {
      mode = "n";
      key = "gI";
      action = "<cmd>Lspsaga finder imp<CR>";
      options = {
        silent = true;
        desc = "Goto Implementation";
      };
    }
    {
      key = "<Leader>la";
      action = "<cmd>Lspsaga code_action<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Code actions";
      };
    }
    {
      key = "<Leader>lr";
      action = "<cmd>Lspsaga rename<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Rename";
      };
    }
    {
      mode = "n";
      key = "<leader>ld";
      action = "<cmd>Lspsaga show_line_diagnostics<CR>";
      options = {
        silent = true;
        desc = "Line diagnostics";
      };
    }
    {
      key = "<Leader>o";
      action = "<cmd>Lspsaga outline<CR>";
      mode = "n";
      options = {
        silent = true;
        desc = "Toggle outline";
      };
    }
  ];
}
