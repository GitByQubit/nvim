-- Your custom settings here:
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
-- 4 space for tab:
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "python", "yaml", "lua" },
    callback = function()
        vim.bo.tabstop = 4
        vim.bo.shiftwidth = 4
        vim.bo.softtabstop = 4
        vim.bo.expandtab = true -- Espacios siempre
    end,
})
