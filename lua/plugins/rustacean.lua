return {
	repo = "mrcjkb/rustaceanvim",

	config = function()
		vim.g.rustaceanvim = {
			server = {
				default_settings = {
					["rust-analyzer"] = {
						cargo = {
							allFeatures = true,
						},
					},
				},
			},
		}
	end,
}
