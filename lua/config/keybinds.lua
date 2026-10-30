-- Navigate between splits with Shift + h/j/k/l
vim.keymap.set("n", "<S-h>", "<C-w>h", { desc = "Move to left split" })
vim.keymap.set("n", "<S-j>", "<C-w>j", { desc = "Move to lower split" })
vim.keymap.set("n", "<S-k>", "<C-w>k", { desc = "Move to upper split" })
vim.keymap.set("n", "<S-l>", "<C-w>l", { desc = "Move to right split" })

-- LSP
vim.keymap.set("n", "<leader>ra", vim.lsp.buf.rename, {desc = "Rename symbol"})
vim.keymap.set("n", "<leader>gd", function()
    vim.cmd("tab split")
    vim.lsp.buf.definition()
end, { desc = "Go to definition in new tab" })
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Find references" })

-- TABS
vim.keymap.set("n", "<leader>b", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<Tab>", "gt", { desc = "Next tab" })
vim.keymap.set("n", "<S-Tab>", "gT", { desc = "Previous tab" })

-- prototype information
vim.keymap.set("n", "K", function()
    local width = vim.o.columns
    local height = vim.o.lines

    vim.lsp.buf.hover({
        border = "rounded",
        max_width = math.max(40, math.floor(width * 0.6)),
        max_height = math.max(10, math.floor(height * 0.5)),
    })
end, { desc = "LSP Hover Documentation" })

-- man page information
vim.keymap.set("n", "<leader>k", function()
    local word = vim.fn.expand("<cword>")
    if word ~= "" then
        vim.cmd("Man " .. vim.fn.fnameescape(word))
    end
end, { desc = "Man Page" })
