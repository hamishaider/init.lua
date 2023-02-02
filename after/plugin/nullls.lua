require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.black,
        require("null-ls").builtins.formatting.verible_verilog_format,
        -- require("null-ls").builtins.diagnostics.vint,
        require("null-ls").builtins.formatting.codespell,
        require("null-ls").builtins.formatting.isort,
        -- require("null-ls").builtins.formatting.shellharden,
        require("null-ls").builtins.formatting.prettierd,
    },
})
