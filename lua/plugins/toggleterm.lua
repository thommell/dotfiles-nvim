--/
--
--	My personal terminal (at the bottom of the screen).
--	Nice to have while working on exercises, or needing to use commands.
--
--/

return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<C-/>]],
			direction = "horizontal",
		})
	end,
}
