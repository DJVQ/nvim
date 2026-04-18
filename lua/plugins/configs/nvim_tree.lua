vim.cmd.packadd("nvim-tree.lua")
require("nvim-tree").setup({
    filters = {
        dotfiles = false,
    },
    renderer = {
        group_empty = true,
    },
})

vim.keymap.set("n", "<leader>e", function()
    require("nvim-tree.api").tree.toggle()
end, { desc = "Toggle NvimTree" })
vim.keymap.set("n", "<leader>fe", function()
    require("nvim-tree.api").tree.open()
end, { desc = "Focus NvimTree" })
