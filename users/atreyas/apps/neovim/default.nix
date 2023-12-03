{ config, pkgs, ...  }:

{
  home.packages = with pkgs; [
    vscode-extensions.ms-vscode.cpptools
  ];
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
      ## Treesitter
      nvim-treesitter
      nvim-treesitter.withAllGrammars
      nvim-treesitter-textobjects
      nvim-lspconfig
      
      nvim-cmp
      cmp-nvim-lsp
      cmp-buffer
      cmp-cmdline

      clangd_extensions-nvim
      nvim-lint
    ];
  };
}