local map = vim.keymap.set

-- Movement
map({ "n", "i" }, "<C-Left>", "<Home>", {
	desc = "Início da linha",
})

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
