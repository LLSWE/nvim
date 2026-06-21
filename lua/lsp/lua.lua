return {
	name = 'lua_ls',
	cmd = { 'lua-language-server' },
	filetypes = { 'lua' },

	settings = {
		Lua = {
			format = {
				enable = true,
				defaultConfig = {
					indent_style = "space",
					indent_size = "2",
				},
			},
			runtime = {
				version = 'LUAJIT',
			},
			diagnostics = {
				globals = { "vim" },
			},

			workspace = {
				checkThirdParty = false,
				library = vim.api.nvim_get_runtime_file("", true),
			},

			telemetry = {
				enable = false,
			},
		}
	}
}
