-- config for newer langs lsp

vim.filetype.add({
  extension = {
    c3 = "c3",
  },
})

-- helper mason_bin

local mason_bin = function(bin)
  return vim.fn.stdpath("data") .. "/mason/bin" .. bin
end

local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")

local c3_lsp_cmd = mason_bin("c3-lsp")

if not configs.c3_lsp then
  configs.c3_lsp = {
    default_config = {
      cmd = { c3_lsp_cmd },
      filetypes = { "c3" },
      single_file_support = true,
      root_dir = function(fname)
        return lspconfig.util.find_git_ancestor(fname) or vim.loop.cwd()
      end,
    },
  }
end

lspconfig.c3_lsp.setup({})
