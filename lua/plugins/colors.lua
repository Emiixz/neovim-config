return {
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		prioprity = 1000,
		config = function()
			require("nightfox").setup({
				options = {
					transparent = false,
					terminal_colors = true,
					styles = {
						comments = "italic",
						keywords = "bold",
						functions = "italic,bold",
						string = "NONE",
						variables = "NONE",
					},
				},
			})
			vim.cmd("colorscheme carbonfox")
		end,
	},
}
