vim.cmd.packadd("toggleterm.nvim")
require("toggleterm").setup({
    size = function(term)
        if term.direction == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
    open_mapping = [[<c-\>]],
})

local Terminal = require("toggleterm.terminal").Terminal
local pool = {}
local MAX = 3

-- switch toggle
local function toggle(i)
    pool[i] = pool[i] or Terminal:new({
        id = i,
        direction = "horizontal",
    })
    pool[i]:toggle()
end

-- delete toggle
local function detoggle(i)
    local term = require("toggleterm.terminal").get(i)
    if term then
        term:shutdown()
    end
end

-- restart toggel
local function retoggle(i)
    detoggle(i)
    toggle(i)
end

-- bind keys
for i = 1, MAX do
    vim.keymap.set("n", "<leader>t" .. i, function()
        toggle(i)
    end, { desc = "Terminal " .. i })
    vim.keymap.set("n", "<leader>td" .. i, function()
        detoggle(i)
    end, { desc = "Terminal " .. i })
    vim.keymap.set("n", "<leader>tr" .. i, function()
        retoggle(i)
    end, { desc = "Terminal " .. i })
end

-- esc in term
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
