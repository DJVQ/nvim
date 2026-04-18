local opt = vim.opt
local cmd = vim.cmd

opt.number = true
opt.cursorline = true
opt.wrap = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.ignorecase = true
opt.smartcase = true

opt.hlsearch = true
opt.incsearch = true

opt.backup = false
opt.writebackup = false
opt.swapfile = false

opt.formatoptions:remove("r")

opt.encoding = "UTF-8"

