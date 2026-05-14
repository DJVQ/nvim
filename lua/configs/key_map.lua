vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- reload config
local function reload_config()
    for name, _ in pairs(package.loaded) do
        if name:match("^configs") or name:match("^plugins") then
            package.loaded[name] = nil
        end
    end
    local config_path = vim.env.MYVIMRC or vim.fn.stdpath("config") .. "/init.lua"
    vim.cmd("luafile " .. config_path)
    vim.notify("config reload", vim.log.levels.INFO)
end

-- set key
vim.keymap.set("n", "<leader>rr", reload_config, { desc = "reload configs" })

vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { desc = "New tab" })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Close tab" })
vim.keymap.set("n", "<leader>th", ":tabprevious<CR>", { desc = "Prev tab" })
vim.keymap.set("n", "<leader>tl", ":tabnext<CR>", { desc = "Next tab" })
