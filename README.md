# neovim config repo

## plugins list

- nvim-tree: show workplace like vscode

- toggleterm: open terminal in neovim like vscode

- fzf: file search or content search

- lualine: show git status and file info

- mason: manage lsp

- lspconfig: lsp config

- blink.cmp: syntax highlighting

- gitsigns: some git operation, like diff

- catppuccin: theme

- nvim-treesitter: height light code

- nvim-web-devicons: icon

## usage
1. install nvim see nvim documention
2. clone nvim config
```bash
git clone https://github.com/DJVQ/nvim.git ~/.config/nvim

```
3. clear nvim plugin cache
```bash
rm -rf ~/.local/share/nvim ~/.cache/nvim  ~/.local/state/nvim
rm -rf  ~/.config/nvim/nvim-pack-lock.json 
```
4. run nvim and install new plugins
5. fix denpendencies, such as Mson install lsp, install tree-sitter, fzf, go, gopls .etc
