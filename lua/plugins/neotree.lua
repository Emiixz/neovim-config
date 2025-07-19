return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- opcional, para ícones bonitos
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			enable_git_status = true,
			enable_diagnostics = true,
			window = {
				position = "left",
				width = 30,
			},
			filesystem = {
				filtered_items = {
					visible = false,
					hide_dotfiles = true,
					hide_gitignored = true,
				},
			},
		})

		-- Atalho para abrir Neo-tree
		vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", { noremap = true, silent = true })
	end,
}
