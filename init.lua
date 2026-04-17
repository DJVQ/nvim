local config_dir = vim.fn.stdpath("config")
vim.opt.rtp:prepend(config_dir) 

-- global configs
require("configs.options")
require("configs.key_map")
require("configs.go")

-- plugins
require("plugins.vim_pack")
require("plugins.configs.treesitter")
require("plugins.configs.nvim_tree")
require("plugins.configs.mason")
require("plugins.configs.gitsigns")
require("plugins.configs.lsp")
require("plugins.configs.blink_cmp")
require("plugins.configs.fzf")
require("plugins.configs.lualine")
require("plugins.configs.toggleterm")
