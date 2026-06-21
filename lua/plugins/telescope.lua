return {
	repo = "nvim-telescope/telescope.nvim",
	deps = {
		{
			repo = "nvim-lua/plenary.nvim",
			module = "plenary",
		},
		{
			repo = 'nvim-telescope/telescope-fzf-native.nvim',
			build = 'make',
		},
	},
	module = "telescope",
	opts = {},
}
