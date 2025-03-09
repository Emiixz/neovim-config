return {

	"m4xshen/autoclose.nvim",
	config = function()
		require("autoclose").setup({
			pairs = {
				["("] = ")",
				["["] = "]",
				["{"] = "}",
				['"'] = '"',
				["'"] = "'",
			},
			-- Isso ativa o fechamento automático
			enabled = true,
			-- Define se o plugin vai fechar as tags HTML também
			html_tags = true,
		})
	end,
}
