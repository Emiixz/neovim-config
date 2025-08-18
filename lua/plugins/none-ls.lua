return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Formatters
				null_ls.builtins.formatting.stylua, -- Lua
				null_ls.builtins.formatting.prettier.with({
					filetypes = { "txt", "html", "css" },
				}),
				null_ls.builtins.formatting.rubocop, -- Ruby
				null_ls.builtins.formatting.gofmt, -- Go
				null_ls.builtins.formatting.csharpier, -- C#
				null_ls.builtins.formatting.clang_format, -- C, C++

				-- PHP-CS-Fixer
				null_ls.builtins.formatting.phpcsfixer,
        null_ls.builtins.formatting.pint,
        null_ls.builtins.formatting.phpcbf,
				
        -- Diagnostics
				null_ls.builtins.diagnostics.phpstan, -- PHP
				null_ls.builtins.diagnostics.erb_lint, -- ERB
				null_ls.builtins.diagnostics.rubocop, -- Ruby
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
