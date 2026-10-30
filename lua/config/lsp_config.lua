vim.lsp.enable("clangd")

vim.filetype.add({
    extension = {
        h = "c",
        hpp = "cpp",
    },
})
-- colors for the diagnostics
vim.api.nvim_set_hl(0, "DiagnosticVirtualLinesError", { fg = "#fb4934" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualLinesWarn",  { fg = "#fabd2f" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualLinesInfo",  { fg = "#83a598" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualLinesHint",  { fg = "#8ec07c" })

-- settings for the error codes, such as "Unknown type name" or "missing semi-colon"
vim.diagnostic.config({
    virtual_text = false,
    virtual_lines = {
        only_current_line = true,
        highlight_whole_line = false,
        format = function(diagnostic)
            return diagnostic.message:gsub("\n", " ")
        end,
    },
    signs = true,
    underline = true,
})

-- disable signs before error/warning/info/hints (could be emoji's etc)
vim.opt.signcolumn = "no"
