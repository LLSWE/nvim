local lsp_dir = vim.fn.stdpath("config") .. "/lua/lsp"

for name, type in vim.fs.dir(lsp_dir) do
	if type == "file"
	    and name:match("%.lua$")
	    and name ~= "init.lua"
	then
		local module = "lsp." .. name:gsub("%.lua$", "")

		local spec = require(module)

		vim.lsp.config(spec.name, spec)
		vim.lsp.enable(spec.name)
	end
end
