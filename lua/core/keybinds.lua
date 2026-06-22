local map = vim.keymap.set

-- Movement
map({ "n", "i" }, "<C-Left>", "<Home>", {
	desc = "Início da linha",
})

-- Window
map("n", "<C-h>", "<cmd>vertical resize -2<CR>", { desc = "Resize left" })
map("n", "<C-l>", "<cmd>vertical resize +2<CR>", { desc = "Resize right" })
map("n", "<C-k>", "<cmd>resize -2<CR>", { desc = "Resize up" })
map("n", "<C-j>", "<cmd>resize +2<CR>", { desc = "Resize down" })

map({ "n", "i" }, "<C-Right>", "<End>", {
	desc = "Fim da linha",
})

-- Ctrl Save
map({ "n", "i" }, "<C-s>", function()
	if vim.fn.mode() == "i" then
		vim.cmd.stopinsert()
	end

	vim.lsp.buf.format({ async = false })
	vim.cmd("write")
end, {
	desc = "Fmt & Save",
})


-- Telescope
local builtin = require("telescope.builtin")
map("n", "<Space><Space>", builtin.find_files, { desc = "Telescope find files", })

-- Explorer
map("n", "<leader>e", function()
	require("snacks").picker.explorer()
end, { desc = "Opens the explorer" })

-- Undo tree
map("n", "<leader>u", function()
	require("undotree").toggle()
end, { desc = "Undo Tree Toggle" })


-- Git
map("n", "<leader>G", function()
	vim.cmd("DiffviewOpen")
end, { desc = "Open Git diff view" })
