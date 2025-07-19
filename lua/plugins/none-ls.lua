return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua, --lua
				null_ls.builtins.formatting.prettier.with({
            filetypes = { "txt" },
          }),
				null_ls.builtins.formatting.rubocop, --ruby
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.csharpier,
        null_ls.builtins.formatting.clang_format,

				null_ls.builtins.diagnostics.erb_lint,
				null_ls.builtins.diagnostics.rubocop, --ruby
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
