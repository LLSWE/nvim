return {
    vim.filetype.add({
        extension = {
            HC = "holyc",
            hc = "holyc",
            HH = "holyc",
            hh = "holyc"
        }
    }),

    name = "hcc-lsp",
    cmd = { "hcc", "-lsp" },

    filetypes = {
        "holyc",
    },

}
