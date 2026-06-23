return {
	name = "gopls",
	cmd = { "gopls" },

	filetypes = {
		"go",
		"gomod",
		"gowork",
		"gotmpl",
	},

	root_markers = {
		"go.work",
		"go.mod",
		".git",
	},

	settings = {
		gopls = {
			staticcheck = true,
			gofumpt = true,

			analyses = {
				nilness = true,
				unusedparams = true,
				unusedwrite = true,
				shadow = true,
				fieldalignment = true,
			},

			completeUnimported = true,
			usePlaceholders = true,
			semanticTokens = true,

			hints = {
				assignVariableTypes = true,
				compositeLiteralFields = true,
				compositeLiteralTypes = true,
				constantValues = true,
				functionTypeParameters = true,
				parameterNames = true,
				rangeVariableTypes = true,
			},

			vulncheck = "Imports",

			codelenses = {
				gc_details = false,
				generate = true,
				regenerate_cgo = true,
				run_govulncheck = true,
				test = true,
				tidy = true,
				upgrade_dependency = true,
				vendor = true,
			},
		},
	},
}
