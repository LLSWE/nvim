-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Ctrl + Seta Direita: vai para o final da linha (sem pular pra próxima)
vim.keymap.set({ "n", "i", "v" }, "<C-Right>", "<End>", { noremap = true, silent = true })

-- Ctrl + Seta Esquerda: vai para o início da linha
vim.keymap.set({ "n", "i", "v" }, "<C-Left>", "<Home>", { noremap = true, silent = true })
