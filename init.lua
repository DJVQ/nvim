local config_dir = vim.fn.stdpath("config")
vim.opt.rtp:prepend(config_dir)

-- global configs
require("configs.options")
require("configs.key_map")
require("configs.lsp")

-- plugins manager
require("plugins.vim_pack")

-- plugins configs
require("plugins.configs.catppuccin")
require("plugins.configs.mason")
require("plugins.configs.blink_cmp")
require("plugins.configs.treesitter")
require("plugins.configs.fzf")
require("plugins.configs.nvim_tree")
require("plugins.configs.gitsigns")
require("plugins.configs.lualine")
require("plugins.configs.toggleterm")
