vim.cmd.packadd("fzf-lua")

require("fzf-lua").setup({
    files = {
        fd_opts = [[--color=never --type f --hidden --follow --exclude .git]],
    }
})

local keyset = vim.keymap.set

keyset("n", "<leader>ff", function()
    require("fzf-lua").files()
end, { desc = "Find Files" })

keyset("n", "<leader>fg", function()
    require("fzf-lua").live_grep()
end, { desc = "Live Grep" })

keyset("n", "<leader>fb", function()
    require("fzf-lua").buffers()
end, { desc = "Buffers" })

keyset("n", "<leader>fh", function()
    require("fzf-lua").help_tags()
end, { desc = "Help Tags" })
