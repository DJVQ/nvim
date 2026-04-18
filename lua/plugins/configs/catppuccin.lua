vim.cmd.packadd("catppuccin")
require("catppuccin").setup({
    transparent_background = false,
        float = {
        transparent = false, -- enable transparent florting windows
        solid = false, -- use solid styling for floating windows, see |winborder|
    },
})
vim.cmd.colorscheme("catppuccin")
