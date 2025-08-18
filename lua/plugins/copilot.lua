return {
	{
		"Exafunction/codeium.vim",
		event = "BufEnter",
		config = function()
			vim.g.codeium_no_map_tab = true
			-- Ativar automaticamente
			vim.g.codeium_enabled = true

			-- Mapeamentos para aceitar/recusar sugestões
			vim.keymap.set("i", "<C-j>", function()
				return vim.fn["codeium#Accept"]()
			end, { expr = true })
			vim.keymap.set("i", "<C-]>", function()
				return vim.fn["codeium#Clear"]()
			end, { expr = true })
			vim.keymap.set("i", "<C-n>", function()
				return vim.fn
			end, { expr = true })
			vim.keymap.set("i", "<C-p>", function()
				return vim.fn["codeium#CycleCompletions"](-1)
			end, { expr = true })
		end,
	},
}
