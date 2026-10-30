return {
    "zaldih/themery.nvim",
    lazy = false,
    dependencies = {
        "ellisonleao/gruvbox.nvim",
        "catppuccin/nvim",
    },
    config = function()
        require("themery").setup({
            themes = {
                {
                    name = "Gruvbox Dark",
                    colorscheme = "gruvbox",
                    before = [[ 
                    vim.o.background = "dark"
                    ]]
                },
                {
                    name = "Gruvbox Light",
                    colorscheme = "gruvbox",
                    before = [[
                    vim.o.background = "light"
                    ]]
                },
                {
                    name = "Catppuccin Latte",
                    colorscheme = "catppuccin",
                    before = [[
                    vim.o.background = "light"
                    vim.g.catppuccin_flavour = "latte"
                    ]],
                },
                {
                    name = "Catppuccin Frappé",
                    colorscheme = "catppuccin",
                    before = [[
                    vim.o.background = "dark"
                    vim.g.catppuccin_flavour = "frappe"
                    ]],
                },
                {
                    name = "Catppuccin Mocha",
                    colorscheme = "catppuccin",
                    before = [[
                    vim.o.background = "dark"
                    vim.g.catppuccin_flavour = "mocha"
                    ]],
                },
            },
            livePreview = true,
        })
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "themery",
            callback = function(ev)
                vim.keymap.set("n", "<Tab>", "j", {
                    buffer = ev.buf,
                    remap = true,
                    desc = "Next theme",
                })

                vim.keymap.set("n", "<S-Tab>", "k", {
                    buffer = ev.buf,
                    remap = true,
                    desc = "Previous theme",
                })
            end,
        })
        vim.keymap.set("n", "<leader>th", "<cmd>Themery<CR>", {
            desc = "Choose Theme",
        })
    end,
}
