vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- reload
vim.keymap.set("n", "<leader>rr", function()
    for name, _ in pairs(package.loaded) do
        if name:match("^configs") or name:match("^plugins") then
            package.loaded[name] = nil
        end
    end

    dofile(vim.env.MYVIMRC)
    print("Config reloaded!")
end, { desc = "Reload Config" })
