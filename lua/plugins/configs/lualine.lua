local function lsp_name()
    local clients = vim.lsp.get_clients({ bufnr = 0 })
    return #clients > 0 and clients[1].name or "No LSP"
end

vim.cmd.packadd("lualine.nvim")
require("lualine").setup({
    options = {
        theme = "auto",
        globalstatus = true,
        section_separators = "",
        component_separators = "",
    },

    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = { { "filename", path = 1 } },

        lualine_x = {
            "diagnostics",
            lsp_name,
            "filetype",
        },

        lualine_y = { "filesize", "progress" },
        lualine_z = { "location" },
    },
})
