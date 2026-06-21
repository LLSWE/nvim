return {
	name = "ocamllsp",
	cmd = { "ocamllsp" },

	filetypes = {
		"ocaml",
		"ocaml.interface",
		"ocamllex",
		"menhir",
		"dune",
	},

	root_markers = {
		"dune-project",
		"dune-workspace",
		".git",
	},
}
