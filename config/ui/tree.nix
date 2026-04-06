{
  plugins = {
    nvim-tree = {
      enable = true;
      settings = {
        diagnostics.enable = true;
        sort.folders_first = false;
        hijack_cursor = true;
        on_attach.__raw = ''
          function(bufnr)
            local api = require "nvim-tree.api"

            -- default mappings
            api.config.mappings.default_on_attach(bufnr)

            -- custom mappings
            vim.keymap.set("n", "<Tab>", "<cmd>wincmd p<CR>", { desc = "Go back to previous window", buffer = bufnr, noremap = true, silent = true, nowait = true })
          end

        '';
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
