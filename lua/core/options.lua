-- gen <leader>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.clipboard = "unnamedplus"

-- Lsp Diagnostics
vim.diagnostic.config({
    virtual_text = {
        spacing = 4,
        source = "if_many",
    },
    signs = true,
    underline = true,
    severity_sort = true,
})

-- Undo persist
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.undoreload = 10000


-- Native Vim Ui preset
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorcolumn = false
vim.opt.cursorline = true
vim.opt.signcolumn = "no"

-- Tab
vim.opt.tabstop = 2
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
