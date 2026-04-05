{
  plugins.transparent = {
    enable = true;
    luaConfig.post = ''
      require('transparent').clear_prefix('lualine')
      require('transparent').clear_prefix('neogit')
      require('transparent').clear_prefix('gitsigns')
      require('transparent').clear_prefix('markview')
      require('transparent').clear_prefix('Telescope')
      require('transparent').clear_prefix('barbar')
      require('transparent').clear_prefix('NvimTree')
    '';
    settings = {
      extra_groups = [
        "Constant"
        "NormalFloat"
        "FloatBorder"
        "EndOfBuffer"
        "Title"
        "WarningMsg"
        "ErrorMsg"
        "GitSigns"
        "NvimTree"
      ];
    };
  };
}
