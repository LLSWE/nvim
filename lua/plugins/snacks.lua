return {
	repo = "folke/snacks.nvim",
	module = "snacks",
	opts = {
		dashboard = require("ui.dashboard"),
		explorer = require("ui.explorer"),
		picker = {
			enabled = true,
			hidden = true,
			ignored = true,
		}
	},
}
