local pack = require("core.pack")

local plugin_dir = vim.fn.stdpath("config") .. "/lua/plugins"


for name, type in vim.fs.dir(plugin_dir) do
	if type == "file" and name:match("%.lua$") and name ~= "init.lua" then
		local module = "plugins." .. name:gsub("%.lua$", "")

		local spec = require(module)

		pack.load(spec)
	end
end
