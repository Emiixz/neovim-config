return {
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"rafamadriz/friendly-snippets",
		},
		config = function()
			-- Carregar snippets personalizados de JavaScript
			require("luasnip.loaders.from_lua").load({ paths = vim.fn.stdpath("config") .. "/lua/plugins/snippets" })

			-- Carregar snippets do VSCode (se necessário)
			local luasnip = require("luasnip")
			require("luasnip.loaders.from_vscode").lazy_load()

			-- Aqui você pode adicionar seus snippets personalizados
		end,
	},
}
