return {
	repo = "saghen/blink.cmp",
	module = "blink.cmp",

	deps = {
		{
			repo = "saghen/blink.lib"
		}
	},

	opts = {},

	build = function()
		require("blink.cmp").build():pwait()
	end,
}
