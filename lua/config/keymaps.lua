vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover Docs" })
vim.keymap.set({ "n", "i", "v" }, "<C-Right>", "<End>", { noremap = true, silent = true })
vim.keymap.set({ "n", "i", "v" }, "<C-Left>", "<Home>", { noremap = true, silent = true })
