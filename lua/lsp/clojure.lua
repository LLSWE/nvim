return {
    name = "clojure-lsp",
    cmd = {
        "clojure-lsp"
    },
    filetypes = { "clojure",
        "clojurescript",
        "clojurec",
        "edn", },

    root_markers = {
        "deps.edn",
        "project.clj",
        "bb.edn",
        ".git",
    },
}
