return {
	name = "clangd",
	cmd = {
		"clangd",
		"--background-index",
		"--clang-tidy",
		"--completion-style=detailed",
		"--header-insertion=iwyu",
		"--function-arg-placeholders",
		"--pch-storage=memory",
	},
	filetypes = { "c", "cpp", "objc", "objcpp" },
}
