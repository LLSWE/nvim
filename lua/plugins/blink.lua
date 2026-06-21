return {
	repo = "saghen/blink.cmp",
	module = "blink.cmp",

	deps = {
		{
			repo = "saghen/blink.lib"
		}
	},

	opts = {
		keymap = {
			preset = "default",

			["<CR>"] = { "accept", "fallback" },
		},
	},

	build = function()
		require("blink.cmp").build():pwait()
	end,
}
