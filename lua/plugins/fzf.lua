--/
--
--	My personal FuzzyFinder for vim.
--	This includes 4 modes:
--	- Finding Files
--	- Live Grep
--	- Finding Buffers
--	- Help Tags
--
--/

return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		keymap = {
			fzf = {
				["tab"] = "down",
				["shift-tab"] = "up",
			},
		},
	},
	keys = {
		{
			"<leader>ff",
			function() require("fzf-lua").files() end,
			desc = "Find Files",
		},
		{
			"<leader>fg",
			function() require("fzf-lua").live_grep() end,
			desc = "Live Grep",
		},
		{
			"<leader>fb",
			function() require("fzf-lua").buffers() end,
			desc = "Find Buffers",
		},
		{
			"<leader>fh",
			function() require("fzf-lua").helptags() end,
			desc = "Help Tags",
		},
	},
}
