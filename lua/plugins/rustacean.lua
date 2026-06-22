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
						inlayHints = {
							bindingModeHints = {
								enable = true,
							},
							chainingHints = {
								enable = true,
							},
							closingBraceHints = {
								enable = true,
								minLines = 25,
							},
							closureReturnTypeHints = {
								enable = "always",
							},
							lifetimeElisionHints = {
								enable = "always",
							},
							parameterHints = {
								enable = true,
							},
							reborrowHints = {
								enable = "always",
							},
							typeHints = {
								enable = true,
							},
						},
					},
				}
			},
		}
	end,
}
