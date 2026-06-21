local M = {}

M.default = "vim"

function M.load()
	vim.cmd.colorscheme(M.default)
end

return M
