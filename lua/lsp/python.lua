return {

    name = 'basedpyright',
    cmd = { 'basedpyright-langserver', '--stdio' },
    filetypes = { 'python' },
    settings = {
        basedpyright = {
            analysis = {
                typeCheckingMode = "standard",
                useLibraryCodeForTypes = true,
                diagnosticMode = "workspace",
                autoSearchPaths = true,
                ignore = { "*" },
                inlayHints = {
                    callArgumentNames = true,
                    functionReturnTypes = true,
                    variableTypes = true,
                },
            },
        },
    }
}
