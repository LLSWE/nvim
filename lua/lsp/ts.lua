return {
	name = 'vtsls',
	cmd = { "vtsls", "--stdio" },
	filetypes = { 'javascript','javascriptreact', 'typescript', 'typescriptreact', 'vue', 'angular' },
  root_markers = {
  "package.json",
  "tsconfig.json",
  "jsconfig.json",
  ".git",
    },
  settings = {
      vtsls = {autoUseWorkspaceTsdk = true},
      typescript = { updateImportsOnFileMove = {enabled = "always"}},
  },
}
