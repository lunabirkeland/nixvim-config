{
  pkgs,
  config,
  ...
}: {
  plugins = {
    treesitter = {
      enable = true;
      nixGrammars = true;
      grammarPackages = with pkgs.tree-sitter-grammars; config.plugins.treesitter.package.allGrammars ++ [tree-sitter-wesl];
      settings = {
        highlight.enable = true;
        indent.enable = true;
      };
    };
    treesitter-context.enable = true;
  };
}
